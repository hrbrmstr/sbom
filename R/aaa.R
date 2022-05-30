u <- jsonlite::unbox

list(
  `GPL (>= 2)` = "GPL-2.0-or-later",
  `GPL-3` = "GPL-3.0",
  `MIT + file LICENSE` = "MIT",
  `GPL-2` = "GPL-2.0",
  `GPL (>= 3)` = "GPL-3.0-or-later",
  GPL = "GPL-1.0-or-later",
  `GPL-2 | GPL-3` = "GPL-2.0-or-later",
  CC0 = "CC0-1.0",
  `GPL-3 | file LICENSE` = "GPL-3.0",
  `LGPL-3` = "LGPL-3.0",
  `BSD_3_clause + file LICENSE` = "BSD-3-Clause",
  `AGPL-3` = "AGPL-3.0",
  `BSD_2_clause + file LICENSE` = "BSD-2-Clause",
  `Artistic-2.0` = "Artistic-2.0",
  `GPL (>= 2.0)` = "GPL-2.0-or-later",
  `Apache License 2.0` = "Apache-2.0",
  `Apache License (== 2.0) | file LICENSE` = "Apache-2.0",
  `GPL-2 | file LICENSE` = "GPL-2.0",
  `Apache License (== 2.0)` = "Apache-2.0",
  Unlimited = "Unlicense",
  `LGPL (>= 2.1)` = "LGPL-2.1+",
  `Apache License (>= 2.0)` = "Apache-2.0",
  `GPL (>= 2) | file LICENSE` = "GPL-2.0-or-later",
  LGPL = "LGPL-2.0-or-later",
  `GPL (>= 3.0)` = "GPL-3.0-or-later",
  `Apache License 2.0 | file LICENSE` = "Apache-2.0",
  `CC BY 4.0` = "CC-BY-4.0",
  `GPL (>= 3) | file LICENSE` = "GPL-3.0-or-later",
  `Apache License (>= 2)` = "Apache-2.0",
  `GNU General Public License` = "GPL-1.0-or-later",
  `LGPL (>= 2)` = "LGPL-2.0+",
  `AGPL (>= 3)` = "GPL-3.0+",
  `LGPL-2.1` = "LGPL-2.1+",
  `MPL-2.0 | file LICENSE` = "MPL-2.0",
  `BSD_3_clause + file LICENCE` = "BSD-3-Clause",
  `MIT + file LICENSE | Unlimited` = "MIT",
  `GPL (>= 2) | file LICENCE` = "GPL-2.0-or-later"
) -> lic_trans

mk_lic <- function(pkg) {

  lic <- lic_trans[[utils::packageDescription(pkg)$License]]

  if (is.null(lic)) {
    list()
  } else {
    c(lic)
  }

}

# R LICENSES

#    4420 License: GPL (>= 2)
#    4290 License: GPL-3
#    3273 License: MIT + file LICENSE
#    2612 License: GPL-2
#    1077 License: GPL (>= 3)
#     513 License: GPL
#     340 License: GPL-2 | GPL-3
#     198 License: CC0
#     164 License: GPL-3 | file LICENSE
#     155 License: LGPL-3
#     133 License: BSD_3_clause + file LICENSE
#     122 License: AGPL-3
#     112 License: BSD_2_clause + file LICENSE
#     112 License: Artistic-2.0
#     106 License: GPL (>= 2.0)
#      99 License: Apache License 2.0
#      61 License: GPL-2 | file LICENSE
#      56 License: Apache License (== 2.0)
#      53 License: Unlimited
#      52 License: LGPL (>= 2.1)
#      52 License: Apache License (>= 2.0)
#      51 License: GPL (>= 2) | file LICENSE
#      49 License: LGPL
#      46 License: LGPL (>= 3)
#      42 License: GPL (>= 3.0)
#      39 License: Apache License 2.0 | file LICENSE
#      33 License: CC BY 4.0
#      31 License: GPL (>= 3) | file LICENSE
#      31 License: Apache License (>= 2)
#      29 License: GNU General Public License
#      24 License: LGPL (>= 2)
#      24 License: AGPL (>= 3)
#      22 License: LGPL-2.1
#      22 License: EUPL
#      21 License: CC BY-SA 4.0
#      20 License: MIT + file LICENCE
#      20 License: LGPL-2
#      18 License: GPL-3 + file LICENSE
#      18 License: CC BY-NC-SA 4.0
#      17 License: file LICENSE
#      16 License: GPL (> 2)
#      14 License: CeCILL-2
#      14 License: BSD 2-clause License + file LICENSE
#      14 License: AGPL-3 | file LICENSE
#      12 License: Apache License (== 2.0) | file LICENSE
#      10 License: Mozilla Public License 2.0
#      10 License: AGPL
#       9 License: MPL-2.0
#       9 License: GPL (>= 2) | file LICENCE
#       9 License: FreeBSD
#       9 License: CeCILL
#       9 License: Apache License
#       7 License: MIT License + file LICENSE
#       7 License: LGPL (>= 2.0)
#       7 License: CC BY-NC 4.0
#       6 License: MPL-2.0 | file LICENSE
#       6 License: GPL (>= 3) | file LICENCE
#       6 License: GNU General Public License version 2
#       6 License: BSD_3_clause + file LICENCE
#       5 License: LGPL-3 | file LICENSE
#       5 License: LGPL-3 | Apache License 2.0
#       5 License: GNU General Public License (>= 3)
#       5 License: BSL-1.0
#       5 License: Artistic License 2.0
#       4 License: MIT + file LICENSE | Apache License 2.0
#       4 License: LGPL-2.1 | file LICENSE
#       4 License: LGPL (>= 2.0, < 3) | Mozilla Public License
#       4 License: Apache License | file LICENSE
#       4 License: ACM
#       3 License: LGPL (>= 3) | file LICENSE
#       3 License: GPL-2 | GPL-3 | file LICENSE
#       3 License: GPL-2 | file LICENCE
#       3 License: GPL (>= 2.1)
#       3 License: GPL (>= 2.0) | file LICENSE
#       3 License: EUPL (>= 1.2)
#       3 License: Creative Commons Attribution 4.0 International License
#       3 License: BSD 3-clause License + file LICENSE
#       3 License: BSD_2_clause + file LICENCE
#       3 License: AGPL + file LICENSE
#       3 License: ACM | file LICENSE
#       2 License: Unlimited | file LICENSE
#       2 License: MPL (>= 2.0)
#       2 License: MPL (== 2.0)
#       2 License: MPL
#       2 License: LGPL-2 | LGPL-3 | GPL-2 | GPL-3
#       2 License: LGPL-2 | BSD_3_clause + file LICENSE
#       2 License: LGPL (>= 2.0, < 3)
#       2 License: GPL | file LICENSE
#       2 License: GPL (>= 3.5.0)
#       2 License: GPL (> 3)
#       2 License: GPL (>= 2) | LGPL (>= 2)
#       2 License: GPL-2 | GPL-3 | MIT + file LICENSE
#       2 License: GPL (>= 2) | BSD_2_clause + file LICENSE
#       2 License: GPL (>= 2.15.1)
#       2 License: GPL (== 2)
#       2 License: GNU General Public License version 3
#       2 License: GNU General Public License (>= 2)
#       2 License: GNU Affero General Public License
#       2 License: FreeBSD | file LICENSE
#       2 License: Common Public License Version 1.0
#       2 License: CeCILL-2 | file LICENSE
#       2 License: BSL
#       2 License: BSD_3_clause + file LICENSE | GPL (>= 2)
#       2 License: Apache License (== 2)
#       1 License: MPL (>= 2) | GPL (>= 2) | file LICENSE
#       1 License: MPL (>= 2) | file LICENSE
#       1 License: MPL (>= 2)
#       1 License: MPL-1.1
#       1 License: Mozilla Public License Version 2.0
#       1 License: Mozilla Public License 1.1
#       1 License: MIT + file LICENSE | Unlimited
#       1 License: MIT+file LICENSE
#       1 License: MIT +file LICENSE
#       1 License: Lucent Public License
#       1 License: LGPL-3 + file LICENSE
#       1 License: LGPL (>= 3.0)
#       1 License: LGPL (>= 2) | file LICENSE
#       1 License: LGPL-2 | Apache License 2.0
#       1 License: LGPL (>= 2.0, < 3) | file LICENSE
#       1 License: GPL-3 | LGPL-2.1
#       1 License: GPL-3 | GPL-2
#       1 License: GPL-3 | file LICENCE
#       1 License: GPL-3 | BSD_2_clause + file LICENSE
#       1 License: GPL (>= 3.3.2)
#       1 License: GPL (>= 3.2)
#       1 License: GPL (>= 3.0.0)
#       1 License: GPL-2 | MIT + file LICENSE
#       1 License: GPL (>= 2) | MIT + file LICENSE
#       1 License: GPL-2 | MIT + file LICENCE
#       1 License: GPL (>= 2) | LGPL-3
#       1 License: GPL-2 | LGPL-2.1 | MPL-1.1
#       1 License: GPL-2 | GPL-3 | BSD_3_clause + file LICENSE
#       1 License: GPL-2 | GPL (>= 2) | GPL-3
#       1 License: GPL (>= 2) | FreeBSD
#       1 License: GPL-2 | Artistic-2.0
#       1 License: GPL (>= 2.2)
#       1 License: GPL (>= 2.15)
#       1 License: GPL (>= 2.10)
#       1 License: GPL (>= 2.0) | file LICENCE
#       1 License: GPL (<= 2.0)
#       1 License: GPL (<= 2)
#       1 License: GPL (>= 1.0)
#       1 License: GNU Lesser General Public License
#       1 License: FreeBSD | GPL-2 | file LICENSE
#       1 License: file LICENCE
#       1 License: EUPL | file LICENSE
#       1 License: EUPL-1.1
#       1 License: EUPL (== 1.1)
#       1 License: EPL | file LICENSE
#       1 License: EPL | CC BY 4.0 | file LICENSE
#       1 License: EPL (>= 1.0)
#       1 License: EPL
#       1 License: CPL (>= 2)
#       1 License: CPL-1.0
#       1 License: CeCILL-2 | GPL-2
#       1 License: CeCILL (>= 2)
#       1 License: CC BY-SA 4.0 | GPL-3 | file LICENSE
#       1 License: CC BY-SA 4.0 | GPL (>= 2)
#       1 License: CC BY-SA 4.0 + file LICENSE
#       1 License: BSD_3_clause + file LICENSE | GPL-2
#       1 License: BSD_3_clause + file LICENSE | file LICENSE
#       1 License: Apache License Version 2.0
#       1 License: AGPL | file LICENSE
#       1 License: AGPL-3 + file LICENSE
#       1 License: AGPL (>= 3) | file LICENSE

# SPDX Licenses
# 0BSD
# AAL
# Abstyles
# Adobe-2006
# Adobe-Glyph
# ADSL
# AFL-1.1
# AFL-1.2
# AFL-2.0
# AFL-2.1
# AFL-3.0
# Afmparse
# AGPL-1.0
# AGPL-1.0-only
# AGPL-1.0-or-later
# AGPL-3.0
# AGPL-3.0-only
# AGPL-3.0-or-later
# Aladdin
# AMDPLPA
# AML
# AMPAS
# ANTLR-PD
# ANTLR-PD-fallback
# Apache-1.0
# Apache-1.1
# Apache-2.0
# APAFML
# APL-1.0
# App-s2p
# APSL-1.0
# APSL-1.1
# APSL-1.2
# APSL-2.0
# Arphic-1999
# Artistic-1.0
# Artistic-1.0-cl8
# Artistic-1.0-Perl
# Artistic-2.0
# Baekmuk
# Bahyph
# Barr
# Beerware
# Bitstream-Vera
# BitTorrent-1.0
# BitTorrent-1.1
# blessing
# BlueOak-1.0.0
# Borceux
# BSD-1-Clause
# BSD-2-Clause
# BSD-2-Clause-FreeBSD
# BSD-2-Clause-NetBSD
# BSD-2-Clause-Patent
# BSD-2-Clause-Views
# BSD-3-Clause
# BSD-3-Clause-Attribution
# BSD-3-Clause-Clear
# BSD-3-Clause-LBNL
# BSD-3-Clause-Modification
# BSD-3-Clause-No-Military-License
# BSD-3-Clause-No-Nuclear-License
# BSD-3-Clause-No-Nuclear-License-2014
# BSD-3-Clause-No-Nuclear-Warranty
# BSD-3-Clause-Open-MPI
# BSD-4-Clause
# BSD-4-Clause-Shortened
# BSD-4-Clause-UC
# BSD-Protection
# BSD-Source-Code
# BSL-1.0
# BUSL-1.1
# bzip2-1.0.5
# bzip2-1.0.6
# C-UDA-1.0
# CAL-1.0
# CAL-1.0-Combined-Work-Exception
# Caldera
# CATOSL-1.1
# CC-BY-1.0
# CC-BY-2.0
# CC-BY-2.5
# CC-BY-2.5-AU
# CC-BY-3.0
# CC-BY-3.0-AT
# CC-BY-3.0-DE
# CC-BY-3.0-NL
# CC-BY-3.0-US
# CC-BY-4.0
# CC-BY-NC-1.0
# CC-BY-NC-2.0
# CC-BY-NC-2.5
# CC-BY-NC-3.0
# CC-BY-NC-3.0-DE
# CC-BY-NC-4.0
# CC-BY-NC-ND-1.0
# CC-BY-NC-ND-2.0
# CC-BY-NC-ND-2.5
# CC-BY-NC-ND-3.0
# CC-BY-NC-ND-3.0-DE
# CC-BY-NC-ND-3.0-IGO
# CC-BY-NC-ND-4.0
# CC-BY-NC-SA-1.0
# CC-BY-NC-SA-2.0
# CC-BY-NC-SA-2.0-FR
# CC-BY-NC-SA-2.0-UK
# CC-BY-NC-SA-2.5
# CC-BY-NC-SA-3.0
# CC-BY-NC-SA-3.0-DE
# CC-BY-NC-SA-3.0-IGO
# CC-BY-NC-SA-4.0
# CC-BY-ND-1.0
# CC-BY-ND-2.0
# CC-BY-ND-2.5
# CC-BY-ND-3.0
# CC-BY-ND-3.0-DE
# CC-BY-ND-4.0
# CC-BY-SA-1.0
# CC-BY-SA-2.0
# CC-BY-SA-2.0-UK
# CC-BY-SA-2.1-JP
# CC-BY-SA-2.5
# CC-BY-SA-3.0
# CC-BY-SA-3.0-AT
# CC-BY-SA-3.0-DE
# CC-BY-SA-4.0
# CC-PDDC
# CC0-1.0
# CDDL-1.0
# CDDL-1.1
# CDL-1.0
# CDLA-Permissive-1.0
# CDLA-Permissive-2.0
# CDLA-Sharing-1.0
# CECILL-1.0
# CECILL-1.1
# CECILL-2.0
# CECILL-2.1
# CECILL-B
# CECILL-C
# CERN-OHL-1.1
# CERN-OHL-1.2
# CERN-OHL-P-2.0
# CERN-OHL-S-2.0
# CERN-OHL-W-2.0
# ClArtistic
# CNRI-Jython
# CNRI-Python
# CNRI-Python-GPL-Compatible
# COIL-1.0
# Community-Spec-1.0
# Condor-1.1
# copyleft-next-0.3.0
# copyleft-next-0.3.1
# CPAL-1.0
# CPL-1.0
# CPOL-1.02
# Crossword
# CrystalStacker
# CUA-OPL-1.0
# Cube
# curl
# D-FSL-1.0
# diffmark
# DL-DE-BY-2.0
# DOC
# Dotseqn
# DRL-1.0
# DSDP
# dvipdfm
# ECL-1.0
# ECL-2.0
# eCos-2.0
# EFL-1.0
# EFL-2.0
# eGenix
# Elastic-2.0
# Entessa
# EPICS
# EPL-1.0
# EPL-2.0
# ErlPL-1.1
# etalab-2.0
# EUDatagrid
# EUPL-1.0
# EUPL-1.1
# EUPL-1.2
# Eurosym
# Fair
# FDK-AAC
# Frameworx-1.0
# FreeBSD-DOC
# FreeImage
# FSFAP
# FSFUL
# FSFULLR
# FTL
# GD
# GFDL-1.1
# GFDL-1.1-invariants-only
# GFDL-1.1-invariants-or-later
# GFDL-1.1-no-invariants-only
# GFDL-1.1-no-invariants-or-later
# GFDL-1.1-only
# GFDL-1.1-or-later
# GFDL-1.2
# GFDL-1.2-invariants-only
# GFDL-1.2-invariants-or-later
# GFDL-1.2-no-invariants-only
# GFDL-1.2-no-invariants-or-later
# GFDL-1.2-only
# GFDL-1.2-or-later
# GFDL-1.3
# GFDL-1.3-invariants-only
# GFDL-1.3-invariants-or-later
# GFDL-1.3-no-invariants-only
# GFDL-1.3-no-invariants-or-later
# GFDL-1.3-only
# GFDL-1.3-or-later
# Giftware
# GL2PS
# Glide
# Glulxe
# GLWTPL
# gnuplot
# GPL-1.0
# GPL-1.0-only
# GPL-1.0-or-later
# GPL-1.0+
# GPL-2.0
# GPL-2.0-only
# GPL-2.0-or-later
# GPL-2.0-with-autoconf-exception
# GPL-2.0-with-bison-exception
# GPL-2.0-with-classpath-exception
# GPL-2.0-with-font-exception
# GPL-2.0-with-GCC-exception
# GPL-2.0+
# GPL-3.0
# GPL-3.0-only
# GPL-3.0-or-later
# GPL-3.0-with-autoconf-exception
# GPL-3.0-with-GCC-exception
# GPL-3.0+
# gSOAP-1.3b
# HaskellReport
# Hippocratic-2.1
# HPND
# HPND-sell-variant
# HTMLTIDY
# IBM-pibs
# ICU
# IJG
# ImageMagick
# iMatix
# Imlib2
# Info-ZIP
# Intel
# Intel-ACPI
# Interbase-1.0
# IPA
# IPL-1.0
# ISC
# Jam
# JasPer-2.0
# JPNIC
# JSON
# KiCad-libraries-exception
# LAL-1.2
# LAL-1.3
# Latex2e
# Leptonica
# LGPL-2.0
# LGPL-2.0-only
# LGPL-2.0-or-later
# LGPL-2.0+
# LGPL-2.1
# LGPL-2.1-only
# LGPL-2.1-or-later
# LGPL-2.1+
# LGPL-3.0
# LGPL-3.0-only
# LGPL-3.0-or-later
# LGPL-3.0+
# LGPLLR
# Libpng
# libpng-2.0
# libselinux-1.0
# libtiff
# LiLiQ-P-1.1
# LiLiQ-R-1.1
# LiLiQ-Rplus-1.1
# Linux-man-pages-copyleft
# Linux-OpenIB
# LPL-1.0
# LPL-1.02
# LPPL-1.0
# LPPL-1.1
# LPPL-1.2
# LPPL-1.3a
# LPPL-1.3c
# MakeIndex
# MirOS
# MIT
# MIT-0
# MIT-advertising
# MIT-CMU
# MIT-enna
# MIT-feh
# MIT-Modern-Variant
# MIT-open-group
# MITNFA
# Motosoto
# mpich2
# MPL-1.0
# MPL-1.1
# MPL-2.0
# MPL-2.0-no-copyleft-exception
# mplus
# MS-PL
# MS-RL
# MTLL
# MulanPSL-1.0
# MulanPSL-2.0
# Multics
# Mup
# NAIST-2003
# NASA-1.3
# Naumen
# NBPL-1.0
# NCGL-UK-2.0
# NCSA
# Net-SNMP
# NetCDF
# Newsletr
# NGPL
# NIST-PD
# NIST-PD-fallback
# NLOD-1.0
# NLOD-2.0
# NLPL
# Nokia
# NOSL
# Noweb
# NPL-1.0
# NPL-1.1
# NPOSL-3.0
# NRL
# NTP
# NTP-0
# Nunit
# O-UDA-1.0
# OCCT-PL
# OCLC-2.0
# ODbL-1.0
# ODC-By-1.0
# OFL-1.0
# OFL-1.0-no-RFN
# OFL-1.0-RFN
# OFL-1.1
# OFL-1.1-no-RFN
# OFL-1.1-RFN
# OGC-1.0
# OGDL-Taiwan-1.0
# OGL-Canada-2.0
# OGL-UK-1.0
# OGL-UK-2.0
# OGL-UK-3.0
# OGTSL
# OLDAP-1.1
# OLDAP-1.2
# OLDAP-1.3
# OLDAP-1.4
# OLDAP-2.0
# OLDAP-2.0.1
# OLDAP-2.1
# OLDAP-2.2
# OLDAP-2.2.1
# OLDAP-2.2.2
# OLDAP-2.3
# OLDAP-2.4
# OLDAP-2.5
# OLDAP-2.6
# OLDAP-2.7
# OLDAP-2.8
# OML
# OpenSSL
# OPL-1.0
# OPUBL-1.0
# OSET-PL-2.1
# OSL-1.0
# OSL-1.1
# OSL-2.0
# OSL-2.1
# OSL-3.0
# Parity-6.0.0
# Parity-7.0.0
# PDDL-1.0
# PHP-3.0
# PHP-3.01
# Plexus
# PolyForm-Noncommercial-1.0.0
# PolyForm-Small-Business-1.0.0
# PostgreSQL
# PSF-2.0
# psfrag
# psutils
# Python-2.0
# Qhull
# QPL-1.0
# Rdisc
# RHeCos-1.1
# RPL-1.1
# RPL-1.5
# RPSL-1.0
# RSA-MD
# RSCPL
# Ruby
# SAX-PD
# Saxpath
# SCEA
# SchemeReport
# Sendmail
# Sendmail-8.23
# SGI-B-1.0
# SGI-B-1.1
# SGI-B-2.0
# SHL-0.5
# SHL-0.51
# SimPL-2.0
# SISSL
# SISSL-1.2
# Sleepycat
# SMLNJ
# SMPPL
# SNIA
# Spencer-86
# Spencer-94
# Spencer-99
# SPL-1.0
# SSH-OpenSSH
# SSH-short
# SSPL-1.0
# StandardML-NJ
# SugarCRM-1.1.3
# SWL
# TAPR-OHL-1.0
# TCL
# TCP-wrappers
# TMate
# TORQUE-1.1
# TOSL
# TU-Berlin-1.0
# TU-Berlin-2.0
# UCL-1.0
# Unicode-DFS-2015
# Unicode-DFS-2016
# Unicode-TOU
# Unlicense
# UPL-1.0
# Vim
# VOSTROM
# VSL-1.0
# W3C
# W3C-19980720
# W3C-20150513
# Watcom-1.0
# Wsuipa
# WTFPL
# wxWindows
# X11
# X11-distribute-modifications-variant
# Xerox
# XFree86-1.1
# xinetd
# Xnet
# xpp
# XSkat
# YPL-1.0
# YPL-1.1
# Zed
# Zend-2.0
# Zimbra-1.3
# Zimbra-1.4
# Zlib
# zlib-acknowledgement
# ZPL-1.1
# ZPL-2.0
# ZPL-2.1
