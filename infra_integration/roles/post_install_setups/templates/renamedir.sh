#!/bin/bash
echo "###############   starting   "`date`
basedir=/home/{{ storm_user }}/session/data 
today=`date +%Y%m%d`
{{ common['soft_link_base_path'] }}/hadoop/bin/hadoop fs -ls ${basedir}"/begin/*"  | grep -iv found | awk -F " " '{print $NF}' | grep -i _W > tmp
{{ common['soft_link_base_path'] }}/hadoop/bin/hadoop fs -ls ${basedir}"/end/*"  | grep -iv found | awk -F " " '{print $NF}' | grep -i _W >> tmp
{{ common['soft_link_base_path'] }}/hadoop/bin/hadoop fs -ls ${basedir}"/crash/*"  | grep -iv found | awk -F " " '{print $NF}' | grep -i _W >> tmp
{{ common['soft_link_base_path'] }}/hadoop/bin/hadoop fs -ls ${basedir}"/events/*/*"  | grep -iv found | awk -F " " '{print $NF}' | grep -i _W >> tmp
for old_dir in `cat tmp`;do
        new_dir=`echo $old_dir | perl -p -i -e 's/_W/_C/g'`
        {{ common['soft_link_base_path'] }}/hadoop/bin/hadoop fs -mv $old_dir $new_dir
        echo "$old_dir   $new_dir"
done

