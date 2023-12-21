vim.loop.fs_opendir("/home/ray/test/oil/asfsadf/sdfsd/", function(err, fd)
    vim.loop.fs_readdir(fd, function(err, entries)
        -- table.insert(entries,
        -- {
        --     name = "..",
        --     type = "directory"
        --  });
        print(vim.inspect(entries))
    end)
end, 1000)
