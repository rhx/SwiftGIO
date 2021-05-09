#!/bin/sh
#
# Swift code wrapper generator for gobject-introspection (.gir) files.
# This needs an installed `gir2swift' executable (github.com/rhx/gir2swift)
#
. ./config.sh
mkdir -p Sources/${MOD}
GOBJECT_LIBDIR=`pkg-config --libs-only-L gobject-introspection-1.0 2>/dev/null | tr ' ' '\n' | grep gobject-introspection | tail -n1 | cut -c3-`
GOBJECT_DIR=`dirname "${GOBJECT_LIBDIR}"`
for prefix in $PREFIX /opt/homebrew /usr/local /usr $GOBJECT_DIR ; do
	gir_dir=${prefix}/share/gir-1.0
	gir=${gir_dir}/${Module}.gir
	if [ -e "${gir}" ] ; then
		export GIR=${gir}
		export GIR_DIR=${gir_dir}
	fi
done
if [ ! -e "${GIR}" ] ; then
	echo "*** ${GIR} does not exist!"
	echo "Make sure libgirepository1.0-dev is installed"
	echo "and can be found in /usr /usr/local or by pkg-config!"
	exit 1
fi
gir2swift -o Sources/${MOD} -m ${Module}.module -p ${GIR_DIR}/GLib-2.0.gir -p ${GIR_DIR}/GObject-2.0.gir "${GIR}"
for src in Sources/${MOD}/*-*.swift ; do
	sed -f ${Module}.sed < ${src} > ${src}.out
	mv -f ${src}.out ${src}
	for ver in 2.60.0 ; do
		if pkg-config --max-version=$ver glib-2.0 ; then
			sed -f ${Module}-$ver.sed < ${src} |	\
			awk -f ${Module}-$ver.awk > ${src}.out
			mv -f ${src}.out ${src}
		fi
	done
	for ver in 2.62.0 ; do
		if pkg-config --atleast-version=$ver glib-2.0 ; then
			sed -f ${Module}-$ver.sed < ${src} > ${src}.out
			mv -f ${src}.out ${src}
		fi
	done
done
touch Sources/${MOD}/${Module}.swift
echo  > Sources/${MOD}/Swift${Mod}.swift "import CGLib"
echo >> Sources/${MOD}/Swift${Mod}.swift "import GLib"
echo >> Sources/${MOD}/Swift${Mod}.swift "import GLibObject"
echo >> Sources/${MOD}/Swift${Mod}.swift ""
grep -h 'public protocol' Sources/${MOD}/*-*.swift | cut -d' ' -f3 | cut -d: -f1 | sort -u | sed -e 's/^\(.*\)/public typealias _gio_\1 = \1/' >> Sources/${MOD}/Swift${Mod}.swift
echo >> Sources/${MOD}/Swift${Mod}.swift ""
grep -h '^open class' Sources/${MOD}/*-*.swift | cut -d' ' -f3 | cut -d: -f1 | sort -u | sed -e 's/^\(.*\)/public typealias _gio_\1 = \1/' >> Sources/${MOD}/Swift${Mod}.swift
echo >> Sources/${MOD}/Swift${Mod}.swift ""
grep -h '^public struct' Sources/${MOD}/*-bitfields.swift | cut -d' ' -f3 | cut -d: -f1 | sort -u | sed -e 's/^\(.*\)/public typealias _gio_\1 = \1/' >> Sources/${MOD}/Swift${Mod}.swift
echo >> Sources/${MOD}/Swift${Mod}.swift ""
echo >> Sources/${MOD}/Swift${Mod}.swift "public struct Gio {"
grep -h 'public protocol' Sources/${MOD}/*-*.swift | cut -d' ' -f3 | cut -d: -f1 | sort -u | sed -e 's/^\(.*\)/    public typealias \1 = _gio_\1/' >> Sources/${MOD}/Swift${Mod}.swift
echo >> Sources/${MOD}/Swift${Mod}.swift ""
grep -h '^open class' Sources/${MOD}/*-*.swift | cut -d' ' -f3 | cut -d: -f1 | sort -u | sed -e 's/^\(.*\)/    public typealias \1 = _gio_\1/' >> Sources/${MOD}/Swift${Mod}.swift
echo >> Sources/${MOD}/Swift${Mod}.swift ""
grep -h '^public typealias' Sources/${MOD}/*-*.swift | sed 's/^/    /' >> Sources/${MOD}/Swift${Mod}.swift
grep -h '^public struct' Sources/${MOD}/*-bitfields.swift | cut -d' ' -f3 | cut -d: -f1 | sort -u | sed -e 's/^\(.*\)/    public typealias \1 = _gio_\1/' >> Sources/${MOD}/Swift${Mod}.swift
echo >> Sources/${MOD}/Swift${Mod}.swift "}"
