.class public Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "LocalCompanionFragment.java"


# static fields
.field private static final SAVED_STATE_THREADS_LIST:Ljava/lang/String; = "saved_state_threads_list"


# instance fields
.field private final MESSAGE_REFRESH_MILLIS:J

.field private mCurrentLocation:Lcom/google/android/gms/maps/model/LatLng;

.field private mHasOpenThread:Z

.field private mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

.field private mMessageAdapter:Lcom/airbnb/android/adapters/RichMessageAdapter;

.field mMessageInput:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

.field mMessagesListView:Landroid/widget/ListView;

.field private mThreadsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/localcompanion/CompanionThread;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadsRequest:Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 47
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->MESSAGE_REFRESH_MILLIS:J

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mThreadsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mThreadsList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->setupMessagesDisplay(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)Lcom/airbnb/android/adapters/RichMessageAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/RichMessageAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mHasOpenThread:Z

    return v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)Lcom/google/android/gms/maps/model/LatLng;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mCurrentLocation:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method static synthetic access$402(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mCurrentLocation:Lcom/google/android/gms/maps/model/LatLng;

    return-object p1
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)Lcom/airbnb/android/utils/LocationHelper;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->startPollingForLatestThreads()V

    return-void
.end method

.method private connectLocationClient()V
    .registers 4

    .prologue
    .line 270
    new-instance v0, Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$4;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$4;-><init>(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/utils/LocationHelper;-><init>(Landroid/content/Context;Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    .line 284
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->connectLocationClient()V

    .line 285
    return-void
.end method

.method private fetchAndShowCurrentMessages()V
    .registers 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/SolitAirActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/SolitAirActivity;->showLoader(Z)V

    .line 98
    new-instance v0, Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;

    new-instance v1, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$1;-><init>(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)V

    invoke-direct {v0, v1}, Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 113
    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;
    .registers 1

    .prologue
    .line 56
    new-instance v0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;-><init>()V

    .line 57
    .local v0, "fragment":Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;
    return-object v0
.end method

.method private setupMessageInputCallback()V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mMessageInput:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    new-instance v1, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;-><init>(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->setRichMessagesCallback(Lcom/airbnb/android/interfaces/RichMessagesCallback;)V

    .line 173
    return-void
.end method

.method private setupMessagesDisplay(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/interfaces/RichMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/interfaces/RichMessage;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mThreadsList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->updateHasOpenThread(Ljava/util/List;)V

    .line 117
    new-instance v0, Lcom/airbnb/android/adapters/RichMessageAdapter;

    invoke-direct {v0, p1}, Lcom/airbnb/android/adapters/RichMessageAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/RichMessageAdapter;

    .line 118
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mMessagesListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/RichMessageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mMessagesListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/RichMessageAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/RichMessageAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 120
    return-void
.end method

.method private startPollingForLatestThreads()V
    .registers 3

    .prologue
    .line 236
    new-instance v0, Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;

    new-instance v1, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$3;-><init>(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)V

    invoke-direct {v0, v1}, Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mThreadsRequest:Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;

    .line 256
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mThreadsRequest:Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;->execute()V

    .line 257
    return-void
.end method

.method private updateHasOpenThread(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/localcompanion/CompanionThread;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "threads":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/localcompanion/CompanionThread;>;"
    if-eqz p1, :cond_17

    .line 230
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/localcompanion/CompanionThread;

    .line 231
    .local v0, "lastThread":Lcom/airbnb/android/models/localcompanion/CompanionThread;
    invoke-virtual {v0}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->isClosed()Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    :goto_15
    iput-boolean v1, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mHasOpenThread:Z

    .line 233
    .end local v0    # "lastThread":Lcom/airbnb/android/models/localcompanion/CompanionThread;
    :cond_17
    return-void

    .line 231
    .restart local v0    # "lastThread":Lcom/airbnb/android/models/localcompanion/CompanionThread;
    :cond_18
    const/4 v1, 0x0

    goto :goto_15
.end method


# virtual methods
.method public companionThreadUpdated(Ljava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/localcompanion/CompanionThread;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "updatedThreadList":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/localcompanion/CompanionThread;>;"
    if-eqz p1, :cond_e

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/RichMessageAdapter;

    if-nez v12, :cond_f

    .line 226
    :cond_e
    :goto_e
    return-void

    .line 181
    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->updateHasOpenThread(Ljava/util/List;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/RichMessageAdapter;

    invoke-virtual {v12}, Lcom/airbnb/android/adapters/RichMessageAdapter;->getCount()I

    move-result v12

    if-nez v12, :cond_78

    const-wide/16 v12, 0x0

    :goto_1e
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 189
    .local v10, "lastShownMessageTime":Ljava/lang/Long;
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v12

    invoke-virtual {v12}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v12

    invoke-virtual {v12}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v4

    .line 192
    .local v4, "currentUserId":J
    new-instance v11, Ljava/util/Stack;

    invoke-direct {v11}, Ljava/util/Stack;-><init>()V

    .line 196
    .local v11, "pendingMessages":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/airbnb/android/interfaces/RichMessage;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v8, v12, -0x1

    .local v8, "i":I
    :goto_39
    if-ltz v8, :cond_96

    .line 197
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/localcompanion/CompanionThread;

    .line 198
    .local v2, "currentThread":Lcom/airbnb/android/models/localcompanion/CompanionThread;
    invoke-virtual {v2}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->getPosts()Ljava/util/List;

    move-result-object v3

    .line 200
    .local v3, "currentThreadPosts":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/localcompanion/CompanionPost;>;"
    const/4 v7, 0x0

    .line 202
    .local v7, "doneUpdating":Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v9, v12, -0x1

    .local v9, "j":I
    :goto_4e
    if-ltz v9, :cond_94

    .line 203
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/localcompanion/CompanionPost;

    .line 204
    .local v1, "currentPost":Lcom/airbnb/android/models/localcompanion/CompanionPost;
    invoke-virtual {v1}, Lcom/airbnb/android/models/localcompanion/CompanionPost;->getCreatedAt()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-lez v12, :cond_93

    invoke-virtual {v1}, Lcom/airbnb/android/models/localcompanion/CompanionPost;->getUserId()J

    move-result-wide v12

    cmp-long v12, v12, v4

    if-eqz v12, :cond_93

    .line 205
    invoke-static {v2, v1}, Lcom/airbnb/android/models/localcompanion/CompanionPost;->createMessageFromPost(Lcom/airbnb/android/models/localcompanion/CompanionThread;Lcom/airbnb/android/models/localcompanion/CompanionPost;)Lcom/airbnb/android/interfaces/RichMessage;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v9, v9, -0x1

    goto :goto_4e

    .line 184
    .end local v1    # "currentPost":Lcom/airbnb/android/models/localcompanion/CompanionPost;
    .end local v2    # "currentThread":Lcom/airbnb/android/models/localcompanion/CompanionThread;
    .end local v3    # "currentThreadPosts":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/localcompanion/CompanionPost;>;"
    .end local v4    # "currentUserId":J
    .end local v7    # "doneUpdating":Z
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v10    # "lastShownMessageTime":Ljava/lang/Long;
    .end local v11    # "pendingMessages":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/airbnb/android/interfaces/RichMessage;>;"
    :cond_78
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/RichMessageAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/RichMessageAdapter;

    invoke-virtual {v13}, Lcom/airbnb/android/adapters/RichMessageAdapter;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Lcom/airbnb/android/adapters/RichMessageAdapter;->getItem(I)Lcom/airbnb/android/interfaces/RichMessage;

    move-result-object v12

    invoke-interface {v12}, Lcom/airbnb/android/interfaces/RichMessage;->getSentDate()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    goto :goto_1e

    .line 207
    .restart local v1    # "currentPost":Lcom/airbnb/android/models/localcompanion/CompanionPost;
    .restart local v2    # "currentThread":Lcom/airbnb/android/models/localcompanion/CompanionThread;
    .restart local v3    # "currentThreadPosts":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/localcompanion/CompanionPost;>;"
    .restart local v4    # "currentUserId":J
    .restart local v7    # "doneUpdating":Z
    .restart local v8    # "i":I
    .restart local v9    # "j":I
    .restart local v10    # "lastShownMessageTime":Ljava/lang/Long;
    .restart local v11    # "pendingMessages":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/airbnb/android/interfaces/RichMessage;>;"
    :cond_93
    const/4 v7, 0x1

    .line 212
    .end local v1    # "currentPost":Lcom/airbnb/android/models/localcompanion/CompanionPost;
    :cond_94
    if-eqz v7, :cond_ac

    .line 217
    .end local v2    # "currentThread":Lcom/airbnb/android/models/localcompanion/CompanionThread;
    .end local v3    # "currentThreadPosts":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/localcompanion/CompanionPost;>;"
    .end local v7    # "doneUpdating":Z
    .end local v9    # "j":I
    :cond_96
    const/4 v6, 0x0

    .line 218
    .local v6, "didAddMessage":Z
    :goto_97
    invoke-virtual {v11}, Ljava/util/Stack;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_af

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/RichMessageAdapter;

    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/airbnb/android/interfaces/RichMessage;

    invoke-virtual {v13, v12}, Lcom/airbnb/android/adapters/RichMessageAdapter;->addMessage(Lcom/airbnb/android/interfaces/RichMessage;)V

    .line 220
    const/4 v6, 0x1

    goto :goto_97

    .line 196
    .end local v6    # "didAddMessage":Z
    .restart local v2    # "currentThread":Lcom/airbnb/android/models/localcompanion/CompanionThread;
    .restart local v3    # "currentThreadPosts":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/localcompanion/CompanionPost;>;"
    .restart local v7    # "doneUpdating":Z
    .restart local v9    # "j":I
    :cond_ac
    add-int/lit8 v8, v8, -0x1

    goto :goto_39

    .line 223
    .end local v2    # "currentThread":Lcom/airbnb/android/models/localcompanion/CompanionThread;
    .end local v3    # "currentThreadPosts":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/localcompanion/CompanionPost;>;"
    .end local v7    # "doneUpdating":Z
    .end local v9    # "j":I
    .restart local v6    # "didAddMessage":Z
    :cond_af
    if-eqz v6, :cond_e

    .line 224
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mMessagesListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/RichMessageAdapter;

    invoke-virtual {v13}, Lcom/airbnb/android/adapters/RichMessageAdapter;->getCount()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto/16 :goto_e
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    const v1, 0x7f0300aa

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 65
    invoke-direct {p0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->connectLocationClient()V

    .line 67
    if-eqz p3, :cond_26

    .line 68
    const-string/jumbo v1, "saved_state_threads_list"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mThreadsList:Ljava/util/ArrayList;

    .line 69
    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mThreadsList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->createMessagesFromThreadsList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->setupMessagesDisplay(Ljava/util/List;)V

    .line 73
    :goto_22
    invoke-direct {p0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->setupMessageInputCallback()V

    .line 75
    return-object v0

    .line 71
    :cond_26
    invoke-direct {p0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->fetchAndShowCurrentMessages()V

    goto :goto_22
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onPause()V

    .line 90
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->disconnectLocationClient()V

    .line 91
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mThreadsRequest:Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;->cancelIfRunning()V

    .line 92
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onResume()V

    .line 83
    invoke-direct {p0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->startPollingForLatestThreads()V

    .line 84
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 262
    const-string/jumbo v0, "saved_state_threads_list"

    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mThreadsList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 263
    return-void
.end method

.method public setMessageInput(Ljava/lang/String;)V
    .registers 3
    .param p1, "messageInput"    # Ljava/lang/String;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mMessageInput:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->setInputText(Ljava/lang/CharSequence;)V

    .line 267
    return-void
.end method
