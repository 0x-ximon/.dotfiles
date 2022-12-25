local status, comment = pcall(require, "Comment")
if not status then
	print("Comment not installed")
end

comment.setup()
