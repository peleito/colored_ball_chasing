file(REMOVE_RECURSE
  "object_detection_3d_automoc.cpp"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/std_srvs_generate_messages_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
