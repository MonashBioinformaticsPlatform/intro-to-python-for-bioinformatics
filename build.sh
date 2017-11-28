#!/bin/sh
set -e

INPUT_DIR=notebooks
OUT_DIR=docs
TEMPLATE_DIR=templates

files=("Intro" "Evasins" "DIY_FASTA" "Epilogue")

index=1
for f in "${files[@]}"; do

  printf -v i "%02d" $index

  jupyter nbconvert --to html --config=export_config.py \
                              --output-dir=$OUT_DIR \
                              --template=$TEMPLATE_DIR/instructor.tpl \
                              --output=${i}_${f}_instructor_notes.html \
                              $INPUT_DIR/${f}.ipynb

  jupyter nbconvert --to html --config=export_config.py \
                              --output-dir=$OUT_DIR \
                              --template=$TEMPLATE_DIR/student.tpl \
                              --output=${i}_${f}.html \
                              $INPUT_DIR/${f}.ipynb

  let "index++"

done

jupyter nbconvert --to slides --output-dir=docs/slides \
                              --reveal-prefix reveal.js \
                              --output=Preamble \
                              docs/slides/Preamble.ipynb
