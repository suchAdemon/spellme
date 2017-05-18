#!/bin/bash
for i in $(seq 1 ${#1})
do
	echo -e "$(echo "${1:i-1:1}" | \
	sed -e "s/^[aA]$/\\\\033[1;31mA\\\\033[00mLFA/" | \
	sed -e "s/^[bB]$/\\\\033[1;31mB\\\\033[00mRAVO/" | \
	sed -e "s/^[cC]$/\\\\033[1;31mC\\\\033[00mHARLIE/" | \
	sed -e "s/^[dD]$/\\\\033[1;31mD\\\\033[00mELTA/" | \
	sed -e "s/^[eE]$/\\\\033[1;31mE\\\\033[00mCHO/" | \
	sed -e "s/^[fF]$/\\\\033[1;31mF\\\\033[00mOXTROT/" | \
	sed -e "s/^[gG]$/\\\\033[1;31mG\\\\033[00mOLF/" | \
	sed -e "s/^[hH]$/\\\\033[1;31mH\\\\033[00mOTEL/" | \
	sed -e "s/^[iI]$/\\\\033[1;31mI\\\\033[00mNDIA/" | \
	sed -e "s/^[jJ]$/\\\\033[1;31mJ\\\\033[00mULIETT/" | \
	sed -e "s/^[kK]$/\\\\033[1;31mK\\\\033[00mILO/" | \
	sed -e "s/^[lL]$/\\\\033[1;31mL\\\\033[00mIMA/" | \
	sed -e "s/^[mM]$/\\\\033[1;31mM\\\\033[00mIKE/" | \
	sed -e "s/^[nN]$/\\\\033[1;31mN\\\\033[00mOVEMBER/" | \
	sed -e "s/^[oO]$/\\\\033[1;31mO\\\\033[00mSCAR/" | \
	sed -e "s/^[pP]$/\\\\033[1;31mP\\\\033[00mAPA/" | \
	sed -e "s/^[qQ]$/\\\\033[1;31mQ\\\\033[00mUEBEC/" | \
	sed -e "s/^[rR]$/\\\\033[1;31mR\\\\033[00mOMEO/" | \
	sed -e "s/^[sS]$/\\\\033[1;31mS\\\\033[00mIERRA/" | \
	sed -e "s/^[tT]$/\\\\033[1;31mT\\\\033[00mANGO/" | \
	sed -e "s/^[uU]$/\\\\033[1;31mU\\\\033[00mNIFORM/" | \
	sed -e "s/^[vV]$/\\\\033[1;31mV\\\\033[00mICTOR/" | \
	sed -e "s/^[wW]$/\\\\033[1;31mW\\\\033[00mHISKEY/" | \
	sed -e "s/^[xX]$/\\\\033[1;31mX\\\\033[00m-RAY/" | \
	sed -e "s/^[yY]$/\\\\033[1;31mY\\\\033[00mANKEE/" | \
	sed -e "s/^[zZ]$/\\\\033[1;31mZ\\\\033[00mULU/" \
	)"
done
