@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs libgit2 2> /dev/null|| printf %s '-lgit2'`")]
lib LibGit2
  alias GitAnnotatedCommit = Void
  alias GitBlob = Void
  alias GitCommit = Void
  alias GitConfig = Void
  alias GitConfigBackend = Void
  alias GitIndex = Void
  alias GitIndexConflictIterator = Void
  alias GitIndexIterator = Void
  alias GitMailmap = Void
  alias GitNote = Void
  alias GitObject = Void
  alias GitOdb = Void
  alias GitOdbBackend = Void
  alias GitOdbObject = Void
  alias GitOdbStream = Void
  alias GitOdbWritepack = Void
  alias GitOidShorten = Void
  alias GitPackbuilder = Void
  alias GitPush = Void
  alias GitRebase = Void
  alias GitRefdb = Void
  alias GitRefdbBackend = Void
  alias GitReference = Void
  alias GitReferenceIterator = Void
  alias GitReflog = Void
  alias GitReflogEntry = Void
  alias GitRefspec = Void
  alias GitRemote = Void
  alias GitRemoteCallbacks = Void
  alias GitRemoteHead = Void
  alias GitRepository = Void
  alias GitRepositoryFetchheadForeachCb = (LibC::Char*, LibC::Char*, GitOid*, LibC::UInt, Void* -> LibC::Int)
  alias GitRepositoryMergeheadForeachCb = (GitOid*, Void* -> LibC::Int)
  alias GitRevwalk = Void
  alias GitStatusList = Void
  alias GitSubmodule = Void
  alias GitTag = Void
  alias GitTimeT = Int64T
  alias GitTransaction = Void
  alias GitTransport = Void
  alias GitTree = Void
  alias GitTreeEntry = Void
  alias GitTreebuilder = Void
  alias GitWorktree = Void
  alias Int64T = X__Int64T
  alias Uint32T = X__Uint32T
  alias X__Int64T = LibC::Long
  alias X__Uint32T = LibC::UInt
  # Basic type (loose or packed) of any Git object.
  enum GitObjectT
    # Object can be any of the following
    GitObjectAny = -2
    # Object is invalid.
    GitObjectInvalid = -1
    # A commit object.
    GitObjectCommit = 1
    # A tree (directory listing) object.
    GitObjectTree = 2
    # A file revision object.
    GitObjectBlob = 3
    # An annotated tag object.
    GitObjectTag = 4
    # A delta, base is given by an offset.
    GitObjectOfsDelta = 6
    # A delta, base is given by object id.
    GitObjectRefDelta = 7
  end
  # List of items which belong to the git repository layout
  enum GitRepositoryItemT
    GitRepositoryItemGitdir     =  0
    GitRepositoryItemWorkdir    =  1
    GitRepositoryItemCommondir  =  2
    GitRepositoryItemIndex      =  3
    GitRepositoryItemObjects    =  4
    GitRepositoryItemRefs       =  5
    GitRepositoryItemPackedRefs =  6
    GitRepositoryItemRemotes    =  7
    GitRepositoryItemConfig     =  8
    GitRepositoryItemInfo       =  9
    GitRepositoryItemHooks      = 10
    GitRepositoryItemLogs       = 11
    GitRepositoryItemModules    = 12
    GitRepositoryItemWorktrees  = 13
  end
  # Check quickly if buffer contains a NUL byte
  fun git_buf_contains_nul(buf : GitBuf*) : LibC::Int
  # Free the memory referred to by the git_buf.
  fun git_buf_dispose(buffer : GitBuf*)
  # Resize the buffer allocation to make more space.
  fun git_buf_grow(buffer : GitBuf*, target_size : LibC::SizeT) : LibC::Int
  # Check quickly if buffer looks like it contains binary data
  fun git_buf_is_binary(buf : GitBuf*) : LibC::Int
  # Set buffer to a copy of some raw data.
  fun git_buf_set(buffer : GitBuf*, data : Void*, datalen : LibC::SizeT) : LibC::Int
  # Query compile time options for libgit2.
  fun git_libgit2_features : LibC::Int
  # Set or query a library global option
  fun git_libgit2_opts(option : LibC::Int, ...) : LibC::Int
  # Return the version of the libgit2 library being currently used.
  fun git_libgit2_version(major : LibC::Int*, minor : LibC::Int*, rev : LibC::Int*)
  # Compare two oid structures.
  fun git_oid_cmp(a : GitOid*, b : GitOid*) : LibC::Int
  # Copy an oid from one structure to another.
  fun git_oid_cpy(out : GitOid*, src : GitOid*)
  # Compare two oid structures for equality
  fun git_oid_equal(a : GitOid*, b : GitOid*) : LibC::Int
  # Format a git_oid into a hex string.
  fun git_oid_fmt(out : LibC::Char*, id : GitOid*)
  # Copy an already raw oid into a git_oid structure.
  fun git_oid_fromraw(out : GitOid*, raw : UInt8*)
  # Parse a hex formatted object id into a git_oid.
  fun git_oid_fromstr(out : GitOid*, str : LibC::Char*) : LibC::Int
  # Parse N characters of a hex formatted object id into a git_oid.
  fun git_oid_fromstrn(out : GitOid*, str : LibC::Char*, length : LibC::SizeT) : LibC::Int
  # Parse a hex formatted null-terminated string into a git_oid.
  fun git_oid_fromstrp(out : GitOid*, str : LibC::Char*) : LibC::Int
  # Check is an oid is all zeros.
  fun git_oid_iszero(id : GitOid*) : LibC::Int
  # Compare the first 'len' hexadecimal characters (packets of 4 bits) of two oid structures.
  fun git_oid_ncmp(a : GitOid*, b : GitOid*, len : LibC::SizeT) : LibC::Int
  # Format a git_oid into a partial hex string.
  fun git_oid_nfmt(out : LibC::Char*, n : LibC::SizeT, id : GitOid*)
  # Format a git_oid into a loose-object path string.
  fun git_oid_pathfmt(out : LibC::Char*, id : GitOid*)
  # Add a new OID to set of shortened OIDs and calculate the minimal length to uniquely identify all the OIDs in the set.
  fun git_oid_shorten_add(os : GitOidShorten, text_id : LibC::Char*) : LibC::Int
  # Free an OID shortener instance
  fun git_oid_shorten_free(os : GitOidShorten)
  # Create a new OID shortener.
  fun git_oid_shorten_new(min_length : LibC::SizeT) : GitOidShorten
  # Compare an oid to an hex formatted object id.
  fun git_oid_strcmp(id : GitOid*, str : LibC::Char*) : LibC::Int
  # Check if an oid equals an hex formatted object id.
  fun git_oid_streq(id : GitOid*, str : LibC::Char*) : LibC::Int
  # Format a git_oid into a buffer as a hex format c-string.
  fun git_oid_tostr(out : LibC::Char*, n : LibC::SizeT, id : GitOid*) : LibC::Char*
  # Format a git_oid into a statically allocated c-string.
  fun git_oid_tostr_s(oid : GitOid*) : LibC::Char*
  # Get the path of the shared common directory for this repository
  fun git_repository_commondir(repo : GitRepository) : LibC::Char*
  # Get the configuration file for this repository.
  fun git_repository_config(out : GitConfig*, repo : GitRepository) : LibC::Int
  # Get a snapshot of the repository's configuration
  fun git_repository_config_snapshot(out : GitConfig*, repo : GitRepository) : LibC::Int
  # Detach the HEAD.
  fun git_repository_detach_head(repo : GitRepository) : LibC::Int
  # Look for a git repository and copy its path in the given buffer. The lookup start from base_path and walk across parent directories if nothing has been found. The lookup ends when the first repository is found, or when reaching a directory referenced in ceiling_dirs or when the filesystem changes (in case across_fs is true).
  fun git_repository_discover(out : GitBuf*, start_path : LibC::Char*, across_fs : LibC::Int, ceiling_dirs : LibC::Char*) : LibC::Int
  # Invoke 'callback' for each entry in the given FETCH_HEAD file.
  fun git_repository_fetchhead_foreach(repo : GitRepository, callback : GitRepositoryFetchheadForeachCb, payload : Void*) : LibC::Int
  # Free a previously allocated repository
  fun git_repository_free(repo : GitRepository)
  # Get the currently active namespace for this repository
  fun git_repository_get_namespace(repo : GitRepository) : LibC::Char*
  # Calculate hash of file using repository filtering rules.
  fun git_repository_hashfile(out : GitOid*, repo : GitRepository, path : LibC::Char*, type : GitObjectT, as_path : LibC::Char*) : LibC::Int
  # Retrieve and resolve the reference pointed at by HEAD.
  fun git_repository_head(out : GitReference*, repo : GitRepository) : LibC::Int
  # Check if a repository's HEAD is detached
  fun git_repository_head_detached(repo : GitRepository) : LibC::Int
  # Check if a worktree's HEAD is detached
  fun git_repository_head_detached_for_worktree(repo : GitRepository, name : LibC::Char*) : LibC::Int
  # Retrieve the referenced HEAD for the worktree
  fun git_repository_head_for_worktree(out : GitReference*, repo : GitRepository, name : LibC::Char*) : LibC::Int
  # Check if the current branch is unborn
  fun git_repository_head_unborn(repo : GitRepository) : LibC::Int
  # Retrieve the configured identity to use for reflogs
  fun git_repository_ident(name : LibC::Char**, email : LibC::Char**, repo : GitRepository) : LibC::Int
  # Get the Index file for this repository.
  fun git_repository_index(out : GitIndex*, repo : GitRepository) : LibC::Int
  # Creates a new Git repository in the given folder.
  fun git_repository_init(out : GitRepository*, path : LibC::Char*, is_bare : LibC::UInt) : LibC::Int
  # Create a new Git repository in the given folder with extended controls.
  fun git_repository_init_ext(out : GitRepository*, repo_path : LibC::Char*, opts : GitRepositoryInitOptions*) : LibC::Int
  # Initialize git_repository_init_options structure
  fun git_repository_init_init_options(opts : GitRepositoryInitOptions*, version : LibC::UInt) : LibC::Int
  # Check if a repository is bare
  fun git_repository_is_bare(repo : GitRepository) : LibC::Int
  # Check if a repository is empty
  fun git_repository_is_empty(repo : GitRepository) : LibC::Int
  # Determine if the repository was a shallow clone
  fun git_repository_is_shallow(repo : GitRepository) : LibC::Int
  # Check if a repository is a linked work tree
  fun git_repository_is_worktree(repo : GitRepository) : LibC::Int
  # Get the location of a specific repository file or directory
  fun git_repository_item_path(out : GitBuf*, repo : GitRepository, item : GitRepositoryItemT) : LibC::Int
  # If a merge is in progress, invoke 'callback' for each commit ID in the MERGE_HEAD file.
  fun git_repository_mergehead_foreach(repo : GitRepository, callback : GitRepositoryMergeheadForeachCb, payload : Void*) : LibC::Int
  # Retrieve git's prepared message
  fun git_repository_message(out : GitBuf*, repo : GitRepository) : LibC::Int
  # Remove git's prepared message.
  fun git_repository_message_remove(repo : GitRepository) : LibC::Int
  # Get the Object Database for this repository.
  fun git_repository_odb(out : GitOdb*, repo : GitRepository) : LibC::Int
  # Open a git repository.
  fun git_repository_open(out : GitRepository*, path : LibC::Char*) : LibC::Int
  # Open a bare repository on the serverside.
  fun git_repository_open_bare(out : GitRepository*, bare_path : LibC::Char*) : LibC::Int
  # Find and open a repository with extended controls.
  fun git_repository_open_ext(out : GitRepository*, path : LibC::Char*, flags : LibC::UInt, ceiling_dirs : LibC::Char*) : LibC::Int
  # Open working tree as a repository
  fun git_repository_open_from_worktree(out : GitRepository*, wt : GitWorktree) : LibC::Int
  # Get the path of this repository
  fun git_repository_path(repo : GitRepository) : LibC::Char*
  # Get the Reference Database Backend for this repository.
  fun git_repository_refdb(out : GitRefdb*, repo : GitRepository) : LibC::Int
  # Make the repository HEAD point to the specified reference.
  fun git_repository_set_head(repo : GitRepository, refname : LibC::Char*) : LibC::Int
  # Make the repository HEAD directly point to the Commit.
  fun git_repository_set_head_detached(repo : GitRepository, commitish : GitOid*) : LibC::Int
  # Make the repository HEAD directly point to the Commit.
  fun git_repository_set_head_detached_from_annotated(repo : GitRepository, commitish : GitAnnotatedCommit) : LibC::Int
  # Set the identity to be used for writing reflogs
  fun git_repository_set_ident(repo : GitRepository, name : LibC::Char*, email : LibC::Char*) : LibC::Int
  # Sets the active namespace for this Git Repository
  fun git_repository_set_namespace(repo : GitRepository, nmspace : LibC::Char*) : LibC::Int
  # Set the path to the working directory for this repository
  fun git_repository_set_workdir(repo : GitRepository, workdir : LibC::Char*, update_gitlink : LibC::Int) : LibC::Int
  # Determines the status of a git repository - ie, whether an operation (merge, cherry-pick, etc) is in progress.
  fun git_repository_state(repo : GitRepository) : LibC::Int
  # Remove all the metadata associated with an ongoing command like merge, revert, cherry-pick, etc. For example: MERGE_HEAD, MERGE_MSG, etc.
  fun git_repository_state_cleanup(repo : GitRepository) : LibC::Int
  # Get the path of the working directory for this repository
  fun git_repository_workdir(repo : GitRepository) : LibC::Char*
  # Create a "fake" repository to wrap an object database
  fun git_repository_wrap_odb(out : GitRepository*, odb : GitOdb) : LibC::Int

  struct GitBuf
    ptr : LibC::Char*
    asize : LibC::SizeT
    size : LibC::SizeT
  end

  struct GitOid
    # raw binary formatted id
    id : UInt8[20]
  end

  struct GitRepositoryInitOptions
    version : LibC::UInt
    flags : Uint32T
    mode : Uint32T
    workdir_path : LibC::Char*
    description : LibC::Char*
    template_path : LibC::Char*
    initial_head : LibC::Char*
    origin_url : LibC::Char*
  end

  struct GitSignature
    # full name of the author
    name : LibC::Char*
    # email of the author
    email : LibC::Char*
    # time when the action happened
    when : GitTime
  end

  struct GitTime
    # time in seconds from epoch
    time : GitTimeT
    # timezone offset, in minutes
    offset : LibC::Int
    # indicator for questionable '-0000' offsets in signature
    sign : LibC::Char
  end

  struct GitTransferProgress
    total_objects : LibC::UInt
    indexed_objects : LibC::UInt
    received_objects : LibC::UInt
    local_objects : LibC::UInt
    total_deltas : LibC::UInt
    indexed_deltas : LibC::UInt
    received_bytes : LibC::SizeT
  end

  struct GitWritestream
    write : (GitWritestream*, LibC::Char*, LibC::SizeT -> LibC::Int)
    close : (GitWritestream* -> LibC::Int)
    free : (GitWritestream* -> Void)
  end

  type GitAnnotatedCommit = Void*
  type GitConfig = Void*
  type GitIndex = Void*
  type GitOdb = Void*
  type GitOidShorten = Void*
  type GitRefdb = Void*
  type GitReference = Void*
  type GitRepository = Void*
  type GitWorktree = Void*
end
