# 1.0.0 (2023-03-02)


### Bug Fixes

* add  dedicated bids_manager module with method to remove AcquisitionDate from ieeg json files created by BIDS_Manager ([ed26784](https://gitlab.hbp.link/hip/bids-tools/commit/ed26784a4ae349bd55bc76c10b244e8af00c6608))
* add print to get_version.py ([f83f9e1](https://gitlab.hbp.link/hip/bids-tools/commit/f83f9e13a233a9a8b55f7a7eff6900d41d39ddfd))
* add versioneer in docs/requirements.txt ([7fb67a3](https://gitlab.hbp.link/hip/bids-tools/commit/7fb67a3e491ae2bc79b8da09c816cce7388fbcd4))
* better handle the insertion of the SEEG information into the indexed content ([a299d73](https://gitlab.hbp.link/hip/bids-tools/commit/a299d739675eab89396415a63c27d982c2990b69))
* **bids/utils/update_with_participants_info:** handle case when participants.tsv is empty ([9e20468](https://gitlab.hbp.link/hip/bids-tools/commit/9e20468755e24ac1b8fba37ba1f4bc9364fe6b22))
* **bids/utils:** better handle bids dataset and schema version in get_bidsdataset_content() ([6e8fd0e](https://gitlab.hbp.link/hip/bids-tools/commit/6e8fd0e94dfc862dd09addca188003cc296af8ba))
* change regex in from field of semantic release replace plugin ([8f843be](https://gitlab.hbp.link/hip/bids-tools/commit/8f843bea8c925eecd5296473f501382aa16ce4e5))
* correct how version tags are generated and used in Makefile ([ade139b](https://gitlab.hbp.link/hip/bids-tools/commit/ade139b1ea3a4c8dc43e7873a30f29b0f1b7b9f6))
* generation of list of participant groups ([dd48a3a](https://gitlab.hbp.link/hip/bids-tools/commit/dd48a3a6bd1de666ff360b848f38d6671de71b7b))
* import resource_filename from pkg_resources in bids/utils.py ([082a7f9](https://gitlab.hbp.link/hip/bids-tools/commit/082a7f94b8119337e0e8c4708d8df5e386b5dc8a))
* **Makefile:** replace / and _ in branch name of docker tag ([128d54b](https://gitlab.hbp.link/hip/bids-tools/commit/128d54bb2a555137d4f3f88c6075630cdefef8aa))
* **Makefile:** review how to normalize the tag ([a912511](https://gitlab.hbp.link/hip/bids-tools/commit/a9125116102ddb3b7c6decd19c0e6082e0aab465))
* paths in github action yaml file ([5963d50](https://gitlab.hbp.link/hip/bids-tools/commit/5963d50c4095753288cad5dc361fdf1d3801573e))
* remove AcquisitionDate from ieeg json files created by BIDS_Manager ([1bbf98c](https://gitlab.hbp.link/hip/bids-tools/commit/1bbf98cf39122e145c420c268bdba9626119ce11))
* replace sub.create by sub.import in VALID_COMMANDS of scripts/main.py ([b791593](https://gitlab.hbp.link/hip/bids-tools/commit/b791593fc248ccf1577a5f29c05224f438139d02))
* review how to insert the year __release_date__ that was causing troubles in get_version.py ([cc9852e](https://gitlab.hbp.link/hip/bids-tools/commit/cc9852ecdc75874ee9ec62164b01ecc3b894a3bf))
* review imports of bids_manager to allow sphinx argparse to generate the documentation of the parser in usage.rst ([86e5960](https://gitlab.hbp.link/hip/bids-tools/commit/86e5960a03d85d345533282916dafeb650086799))
* set "id" in dataset content to be indexed ([ea765b9](https://gitlab.hbp.link/hip/bids-tools/commit/ea765b9c26a5f914f1afdfcd8e66104c879a030f))
* Set "n/a" values as null in dataset json content to make elasticsearch happy indexing it ([dcf3abf](https://gitlab.hbp.link/hip/bids-tools/commit/dcf3abfb30a9be951a3eb493ac01a588c2e821af))
* update main doc only if master and dev branches are updated ([c52af1d](https://gitlab.hbp.link/hip/bids-tools/commit/c52af1d1ccb5047958aa3f43d89967b223ceaeb1))
* update regex for replacement of __version__ ([96c1128](https://gitlab.hbp.link/hip/bids-tools/commit/96c112890ab740395c4af9c811bc9e7cb421c529))


### Features

* add BIDS_VERSION to bids.const ([a986cce](https://gitlab.hbp.link/hip/bids-tools/commit/a986ccef970b02c99a368eb8f4900f83b7ac908c))
* add get_subject_bidsfile_info in bids.utils to handle this task with pybids ([65b7d25](https://gitlab.hbp.link/hip/bids-tools/commit/65b7d251ecc47ea39f4851d6522ba30b8eadfa85))
* add methods to create the json summarizing bids datasets for indexing ([f54d291](https://gitlab.hbp.link/hip/bids-tools/commit/f54d291d6e3ebdbe625351abbe29857b8bac4706))
* add original pybids bids.json config file ([5687d17](https://gitlab.hbp.link/hip/bids-tools/commit/5687d17adb07f638b1369b9f059ca5a955de333e))
* **bids_utils:** extract additional ChannelCount fields in get_bidsdataset_content ([9e23ebf](https://gitlab.hbp.link/hip/bids-tools/commit/9e23ebf7bf65f4fdc6ed7bde7a418851d4c1754a))
* **bids_utils:** use asyncio to generate asynchronously the indexed content of multiple datasets ([edcf742](https://gitlab.hbp.link/hip/bids-tools/commit/edcf7427908db41a9d9d7ac55d8ddbc829e28e3f))
* check the validity of the value given to --command parser's argument ([e2b3f14](https://gitlab.hbp.link/hip/bids-tools/commit/e2b3f145fb15a385aae63d2e7e7a0cc655e39224))
* create function to get dataset size in bids/utils.py ([680ffc3](https://gitlab.hbp.link/hip/bids-tools/commit/680ffc33d52a563da49b80089c1042b7108055c1))
* **Dockerfile:** install bids-validator npm package from our fork on dev-hip branch ([85f9afd](https://gitlab.hbp.link/hip/bids-tools/commit/85f9afdb1f9e5bc55f4b32115b963b4408c7be19))
* fixed build and tag name for backward compatibility ([93e81a0](https://gitlab.hbp.link/hip/bids-tools/commit/93e81a0a4d687a2b52a852e115de8523610184ae))
* get dataset content to be indexed for all at once ([a397b00](https://gitlab.hbp.link/hip/bids-tools/commit/a397b002e0bc00c04238a9e27087feffb2b2dab6))
* handle CT in sub_import() of participants.py using our modified BIDS Manager fork ([4552e8c](https://gitlab.hbp.link/hip/bids-tools/commit/4552e8c6b0e1433d1a52ec98684c7fc033cd66bc))
* implement function to create BIDSLayout object with custom config to handle CT ([fea0b72](https://gitlab.hbp.link/hip/bids-tools/commit/fea0b72cefc1f6237050126e351d59407bfcca12))
* install pybids and pandas in docker ([8d3f7e0](https://gitlab.hbp.link/hip/bids-tools/commit/8d3f7e043ad25260d7792f7becfc97ed9c23fd39))
* make adjustment of bids dataset content ([15008ad](https://gitlab.hbp.link/hip/bids-tools/commit/15008ada069dc210b36d02ea7d18d5a3f9511947))
* **Makefile:** use BuildKit for docker build ([fa0b55b](https://gitlab.hbp.link/hip/bids-tools/commit/fa0b55bcb8a3ba2b8bc8988f1e6c7d00348e0ab5))
* perform test and code coverage with pytest and pytest-cov ([8a89db1](https://gitlab.hbp.link/hip/bids-tools/commit/8a89db1b1ede9ca9d3e7d0bb3c0087f6b8191d71))
* validate with bids-validator and put outputs into the dataset's JSON to be indexed ([c1bcd79](https://gitlab.hbp.link/hip/bids-tools/commit/c1bcd792adb5c71b4340981d7af406dd7d0e60e8))


### Reverts

* change back to from: __version__ = ".*" for semrel replace plugin ([ea516e1](https://gitlab.hbp.link/hip/bids-tools/commit/ea516e10b64409e6b6461e97d6978a548da29583))

# [1.0.0-dev.2](https://gitlab.hbp.link/hip/bids-tools/compare/v1.0.0-dev.1...v1.0.0-dev.2) (2023-03-02)


### Bug Fixes

* change regex in from field of semantic release replace plugin ([8f843be](https://gitlab.hbp.link/hip/bids-tools/commit/8f843bea8c925eecd5296473f501382aa16ce4e5))
* review how to insert the year __release_date__ that was causing troubles in get_version.py ([cc9852e](https://gitlab.hbp.link/hip/bids-tools/commit/cc9852ecdc75874ee9ec62164b01ecc3b894a3bf))
* update main doc only if master and dev branches are updated ([c52af1d](https://gitlab.hbp.link/hip/bids-tools/commit/c52af1d1ccb5047958aa3f43d89967b223ceaeb1))
* update regex for replacement of __version__ ([96c1128](https://gitlab.hbp.link/hip/bids-tools/commit/96c112890ab740395c4af9c811bc9e7cb421c529))


### Reverts

* change back to from: __version__ = ".*" for semrel replace plugin ([ea516e1](https://gitlab.hbp.link/hip/bids-tools/commit/ea516e10b64409e6b6461e97d6978a548da29583))

# 1.0.0-dev.1 (2023-02-26)


### Bug Fixes

* add  dedicated bids_manager module with method to remove AcquisitionDate from ieeg json files created by BIDS_Manager ([ed26784](https://gitlab.hbp.link/hip/bids-tools/commit/ed26784a4ae349bd55bc76c10b244e8af00c6608))
* add print to get_version.py ([f83f9e1](https://gitlab.hbp.link/hip/bids-tools/commit/f83f9e13a233a9a8b55f7a7eff6900d41d39ddfd))
* add versioneer in docs/requirements.txt ([7fb67a3](https://gitlab.hbp.link/hip/bids-tools/commit/7fb67a3e491ae2bc79b8da09c816cce7388fbcd4))
* better handle the insertion of the SEEG information into the indexed content ([a299d73](https://gitlab.hbp.link/hip/bids-tools/commit/a299d739675eab89396415a63c27d982c2990b69))
* **bids/utils/update_with_participants_info:** handle case when participants.tsv is empty ([9e20468](https://gitlab.hbp.link/hip/bids-tools/commit/9e20468755e24ac1b8fba37ba1f4bc9364fe6b22))
* **bids/utils:** better handle bids dataset and schema version in get_bidsdataset_content() ([6e8fd0e](https://gitlab.hbp.link/hip/bids-tools/commit/6e8fd0e94dfc862dd09addca188003cc296af8ba))
* correct how version tags are generated and used in Makefile ([ade139b](https://gitlab.hbp.link/hip/bids-tools/commit/ade139b1ea3a4c8dc43e7873a30f29b0f1b7b9f6))
* generation of list of participant groups ([dd48a3a](https://gitlab.hbp.link/hip/bids-tools/commit/dd48a3a6bd1de666ff360b848f38d6671de71b7b))
* import resource_filename from pkg_resources in bids/utils.py ([082a7f9](https://gitlab.hbp.link/hip/bids-tools/commit/082a7f94b8119337e0e8c4708d8df5e386b5dc8a))
* **Makefile:** replace / and _ in branch name of docker tag ([128d54b](https://gitlab.hbp.link/hip/bids-tools/commit/128d54bb2a555137d4f3f88c6075630cdefef8aa))
* **Makefile:** review how to normalize the tag ([a912511](https://gitlab.hbp.link/hip/bids-tools/commit/a9125116102ddb3b7c6decd19c0e6082e0aab465))
* paths in github action yaml file ([5963d50](https://gitlab.hbp.link/hip/bids-tools/commit/5963d50c4095753288cad5dc361fdf1d3801573e))
* remove AcquisitionDate from ieeg json files created by BIDS_Manager ([1bbf98c](https://gitlab.hbp.link/hip/bids-tools/commit/1bbf98cf39122e145c420c268bdba9626119ce11))
* replace sub.create by sub.import in VALID_COMMANDS of scripts/main.py ([b791593](https://gitlab.hbp.link/hip/bids-tools/commit/b791593fc248ccf1577a5f29c05224f438139d02))
* review imports of bids_manager to allow sphinx argparse to generate the documentation of the parser in usage.rst ([86e5960](https://gitlab.hbp.link/hip/bids-tools/commit/86e5960a03d85d345533282916dafeb650086799))
* set "id" in dataset content to be indexed ([ea765b9](https://gitlab.hbp.link/hip/bids-tools/commit/ea765b9c26a5f914f1afdfcd8e66104c879a030f))
* Set "n/a" values as null in dataset json content to make elasticsearch happy indexing it ([dcf3abf](https://gitlab.hbp.link/hip/bids-tools/commit/dcf3abfb30a9be951a3eb493ac01a588c2e821af))


### Features

* add BIDS_VERSION to bids.const ([a986cce](https://gitlab.hbp.link/hip/bids-tools/commit/a986ccef970b02c99a368eb8f4900f83b7ac908c))
* add get_subject_bidsfile_info in bids.utils to handle this task with pybids ([65b7d25](https://gitlab.hbp.link/hip/bids-tools/commit/65b7d251ecc47ea39f4851d6522ba30b8eadfa85))
* add methods to create the json summarizing bids datasets for indexing ([f54d291](https://gitlab.hbp.link/hip/bids-tools/commit/f54d291d6e3ebdbe625351abbe29857b8bac4706))
* add original pybids bids.json config file ([5687d17](https://gitlab.hbp.link/hip/bids-tools/commit/5687d17adb07f638b1369b9f059ca5a955de333e))
* **bids_utils:** extract additional ChannelCount fields in get_bidsdataset_content ([9e23ebf](https://gitlab.hbp.link/hip/bids-tools/commit/9e23ebf7bf65f4fdc6ed7bde7a418851d4c1754a))
* **bids_utils:** use asyncio to generate asynchronously the indexed content of multiple datasets ([edcf742](https://gitlab.hbp.link/hip/bids-tools/commit/edcf7427908db41a9d9d7ac55d8ddbc829e28e3f))
* check the validity of the value given to --command parser's argument ([e2b3f14](https://gitlab.hbp.link/hip/bids-tools/commit/e2b3f145fb15a385aae63d2e7e7a0cc655e39224))
* create function to get dataset size in bids/utils.py ([680ffc3](https://gitlab.hbp.link/hip/bids-tools/commit/680ffc33d52a563da49b80089c1042b7108055c1))
* **Dockerfile:** install bids-validator npm package from our fork on dev-hip branch ([85f9afd](https://gitlab.hbp.link/hip/bids-tools/commit/85f9afdb1f9e5bc55f4b32115b963b4408c7be19))
* fixed build and tag name for backward compatibility ([93e81a0](https://gitlab.hbp.link/hip/bids-tools/commit/93e81a0a4d687a2b52a852e115de8523610184ae))
* get dataset content to be indexed for all at once ([a397b00](https://gitlab.hbp.link/hip/bids-tools/commit/a397b002e0bc00c04238a9e27087feffb2b2dab6))
* handle CT in sub_import() of participants.py using our modified BIDS Manager fork ([4552e8c](https://gitlab.hbp.link/hip/bids-tools/commit/4552e8c6b0e1433d1a52ec98684c7fc033cd66bc))
* implement function to create BIDSLayout object with custom config to handle CT ([fea0b72](https://gitlab.hbp.link/hip/bids-tools/commit/fea0b72cefc1f6237050126e351d59407bfcca12))
* install pybids and pandas in docker ([8d3f7e0](https://gitlab.hbp.link/hip/bids-tools/commit/8d3f7e043ad25260d7792f7becfc97ed9c23fd39))
* make adjustment of bids dataset content ([15008ad](https://gitlab.hbp.link/hip/bids-tools/commit/15008ada069dc210b36d02ea7d18d5a3f9511947))
* **Makefile:** use BuildKit for docker build ([fa0b55b](https://gitlab.hbp.link/hip/bids-tools/commit/fa0b55bcb8a3ba2b8bc8988f1e6c7d00348e0ab5))
* perform test and code coverage with pytest and pytest-cov ([8a89db1](https://gitlab.hbp.link/hip/bids-tools/commit/8a89db1b1ede9ca9d3e7d0bb3c0087f6b8191d71))
* validate with bids-validator and put outputs into the dataset's JSON to be indexed ([c1bcd79](https://gitlab.hbp.link/hip/bids-tools/commit/c1bcd792adb5c71b4340981d7af406dd7d0e60e8))