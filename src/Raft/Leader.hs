{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE DataKinds #-}

module Raft.Leader where

import Protolude

import Raft.Monad hiding (HandleRPC(..), HandleTimeout(..))
import Raft.Types

--------------------------------------------------------------------------------
-- Leader
--------------------------------------------------------------------------------

handleAppendEntries :: RPCHandler 'Leader (AppendEntries v) v
handleAppendEntries = undefined

-- | Leaders should not respond to 'AppendEntriesResponse' messages.
handleAppendEntriesResponse :: RPCHandler 'Leader AppendEntriesResponse v
handleAppendEntriesResponse = undefined

handleRequestVote :: RPCHandler 'Leader RequestVote v
handleRequestVote = undefined

-- | Leaders should not respond to 'RequestVoteResponse' messages.
handleRequestVoteResponse :: RPCHandler 'Leader RequestVoteResponse v
handleRequestVoteResponse = undefined

handleTimeout :: TimeoutHandler 'Leader v
handleTimeout fs timeout = undefined