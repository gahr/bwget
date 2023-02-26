# vim: set ts=8 noexpandtab:

REPO=	fossil info | grep ^repository | awk '{print $$2}'

git:
	@if [ -e git-import ]; then \
	    echo "The 'git-import' directory already exists"; \
	    exit 1; \
	fi; \
	git init -b main git-import && cd git-import && \
	fossil export --git --rename-trunk main --repository `${REPO}` | \
	git fast-import && git reset --hard HEAD && \
	git remote add origin git@github.com:gahr/bwget.git && \
	git push -f origin main && \
	cd .. && rm -rf git-import

