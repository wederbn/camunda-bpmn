alter table ACT_RU_EXECUTION add CACHED_ENT_STATE_ int;
update ACT_RU_EXECUTION set CACHED_ENT_STATE_ = 7;

create index ACT_IDX_HI_DETAIL_TASK_ID on ACT_HI_DETAIL(TASK_ID_);

alter table ACT_RE_PROCDEF
    add constraint ACT_UNIQ_PROCDEF
    unique (KEY_,VERSION_);