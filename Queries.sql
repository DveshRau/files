sel * from scd04_gcfr_vr.Gcfr_system where ctl_id=1099;
sel * from SCD04_GCFR_TB.Gcfr_system_file where Ctl_id=1099


sel * from  SCD04_GCFR_VR.GCFR_STREAM_busdate where stream_key in (3967);--- set Biz day
sel * from  SCD04_GCFR_VR.GCFR_STREAM_ID   where stream_key in (3967);--- Start stream
sel * from  SCD04_GCFR_VR.GCFR_PROCESS_ID  where stream_key in (3967);

--update   SCD04_GCFR_VR.GCFR_Stream_BusDate  set                processing_flag=1 where     stream_key=3105;
--update   SCD04_GCFR_VR.GCFR_Stream_Id   set          processing_flag=1  where    stream_key=3105
--update SCD04_GCFR_VR.GCFR_PROCESS_ID set process_state=99 where process_name in
(
'T1_00283_003_R000000_D_01'
)


--stream_key, ctl_id, description 

sel distinct GCFR_Process.stream_key, GCFR_Process.ctl_id, Gcfr_system.description from SCD04_GCFR_TB.GCFR_Process
left join  SCD04_GCFR_TB.Gcfr_system on Gcfr_system.ctl_id  = GCFR_Process.ctl_id
where GCFR_Process.ctl_id ='307'

help table SCD04_GCFR_TB.GCFR_Process

sel *   from SCD04_GCFR_TB.GCFR_Process where ctl_id ='1099'
and TARGET_TABLEDATABASENAME in('SCD04_SRI_TB','SCD04_STG_TB')

sel *   from SCD04_GCFR_TB.GCFR_Process where ctl_id ='283'
and TARGET_TABLEDATABASENAME in('SCD04_SRI_TB')

