file(REMOVE_RECURSE
  "object_detection_2d_automoc.cpp"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/object_detection_2d_gennodejs.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
