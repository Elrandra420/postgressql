SELECT pfirstname, plastname, (SELECT COUNT(*) FROM listitems WHERE listitems.lid = lists.lid) FROM people JOIN lists USING (pid) ORDER BY count DESC;