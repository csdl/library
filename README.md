# library

To update the library, you must:

  1. Update csdl-trs.bib (in the csdl/techreports repository).


  3. If it's a new year, edit make_html.sh to generate the new year and edit index.md to display the new year.

  4. Invoke `make_html.sh` to copy csdl-trs.bib to this directory, and generate the bib files for each year.

  5. Invoke `bundle exec jekyll serve --baseurl ''` to validate the updates locally.

  6. Commit to github. Your results should appear quickly at https://csdl.github.io/library/

