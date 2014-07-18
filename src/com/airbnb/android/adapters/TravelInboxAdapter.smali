.class public Lcom/airbnb/android/adapters/TravelInboxAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TravelInboxAdapter.java"

# interfaces
.implements Lcom/airbnb/android/requests/AirRequestFactory$Consumer;
.implements Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;,
        Lcom/airbnb/android/adapters/TravelInboxAdapter$TravelInboxCallback;,
        Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/interfaces/TravelInboxItem;",
        ">;",
        "Lcom/airbnb/android/requests/AirRequestFactory$Consumer",
        "<",
        "Lcom/airbnb/android/interfaces/TravelInboxItem;",
        ">;",
        "Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;"
    }
.end annotation


# instance fields
.field private mAlerts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/Alert;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/airbnb/android/adapters/TravelInboxAdapter$TravelInboxCallback;

.field private mIsHistory:Z

.field private mMessageRequest:Lcom/airbnb/android/requests/MessageRequest;

.field private mMessageThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/MessageThread;",
            ">;"
        }
    .end annotation
.end field

.field private mRemainingData:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "isHistory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/MessageThread;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/Alert;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/MessageThread;>;"
    .local p3, "alerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/Alert;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mAlerts:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mMessageThreads:Ljava/util/ArrayList;

    .line 62
    iput-boolean p4, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mIsHistory:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mRemainingData:Z

    .line 64
    if-eqz p2, :cond_24

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 65
    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mMessageThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 67
    :cond_24
    if-eqz p3, :cond_31

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_31

    .line 68
    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 70
    :cond_31
    return-void
.end method

.method static synthetic access$102(Lcom/airbnb/android/adapters/TravelInboxAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/TravelInboxAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mRemainingData:Z

    return p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/adapters/TravelInboxAdapter;)Lcom/airbnb/android/adapters/TravelInboxAdapter$TravelInboxCallback;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/TravelInboxAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mCallback:Lcom/airbnb/android/adapters/TravelInboxAdapter$TravelInboxCallback;

    return-object v0
.end method

.method private getHeaderTitle(I)Ljava/lang/String;
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1f

    .line 209
    if-nez p1, :cond_16

    .line 210
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    :goto_15
    return-object v0

    .line 212
    :cond_16
    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    .line 214
    :cond_1f
    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mMessageThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3e

    .line 215
    if-nez p1, :cond_35

    .line 216
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e04a2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 218
    :cond_35
    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mMessageThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    .line 220
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Index OOB, possibly bad logic in TravelInboxAdapter.getHeaderTitle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isHeader(I)Z
    .registers 5
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "previousItemsCount":I
    iget-object v2, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mAlerts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 103
    if-ne p1, v0, :cond_d

    .line 116
    :cond_c
    :goto_c
    return v1

    .line 106
    :cond_d
    iget-object v2, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mAlerts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 110
    :cond_16
    iget-object v2, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mMessageThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2b

    if-lez v0, :cond_2b

    .line 111
    if-eq p1, v0, :cond_c

    .line 114
    iget-object v1, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mMessageThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 116
    :cond_2b
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private loadMore()V
    .registers 6

    .prologue
    .line 224
    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mMessageRequest:Lcom/airbnb/android/requests/MessageRequest;

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->isQueueRunning(Lcom/android/volley/Request;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 256
    :goto_8
    return-void

    .line 229
    :cond_9
    new-instance v0, Lcom/airbnb/android/requests/MessageRequest;

    iget-object v1, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mMessageThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mIsHistory:Z

    new-instance v4, Lcom/airbnb/android/adapters/TravelInboxAdapter$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/adapters/TravelInboxAdapter$1;-><init>(Lcom/airbnb/android/adapters/TravelInboxAdapter;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/android/requests/MessageRequest;-><init>(IIZLcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mMessageRequest:Lcom/airbnb/android/requests/MessageRequest;

    .line 255
    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mMessageRequest:Lcom/airbnb/android/requests/MessageRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/MessageRequest;->execute()V

    goto :goto_8
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/airbnb/android/interfaces/TravelInboxItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/airbnb/android/interfaces/TravelInboxItem;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 281
    :cond_8
    :goto_8
    return-void

    .line 266
    :cond_9
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    instance-of v0, v2, Lcom/airbnb/android/models/Alert;

    .line 267
    .local v0, "isAlert":Z
    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mAlerts:Ljava/util/ArrayList;

    .line 268
    .local v1, "targetList":Ljava/util/List;
    :goto_16
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    new-instance v2, Lcom/airbnb/android/adapters/TravelInboxAdapter$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/adapters/TravelInboxAdapter$2;-><init>(Lcom/airbnb/android/adapters/TravelInboxAdapter;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 280
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->notifyDataSetChanged()V

    goto :goto_8

    .line 267
    .end local v1    # "targetList":Ljava/util/List;
    :cond_25
    iget-object v1, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mMessageThreads:Ljava/util/ArrayList;

    goto :goto_16
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 342
    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mMessageThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mRemainingData:Z

    .line 344
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->notifyDataSetChanged()V

    .line 345
    return-void
.end method

.method public clearAlerts()V
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 374
    return-void
.end method

.method public getAlerts()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/Alert;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mAlerts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 294
    const/4 v0, 0x0

    .line 297
    .local v0, "count":I
    iget-object v1, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mAlerts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2e

    iget-object v1, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mAlerts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_12
    add-int/2addr v0, v1

    .line 300
    iget-object v1, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mMessageThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_26

    .line 302
    if-lez v0, :cond_1f

    .line 303
    add-int/lit8 v0, v0, 0x1

    .line 306
    :cond_1f
    iget-object v1, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mMessageThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 309
    :cond_26
    iget-boolean v1, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mRemainingData:Z

    if-eqz v1, :cond_2b

    const/4 v2, 0x1

    :cond_2b
    add-int v1, v0, v2

    return v1

    :cond_2e
    move v1, v2

    .line 297
    goto :goto_12
.end method

.method public getHeaderItemIndex(I)I
    .registers 6
    .param p1, "headerNum"    # I

    .prologue
    .line 349
    const/4 v1, 0x0

    .line 350
    .local v1, "index":I
    const/4 v2, -0x1

    .line 351
    .local v2, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_17

    if-gt v1, p1, :cond_17

    .line 352
    invoke-virtual {p0, v0}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->isHeaderItem(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 353
    add-int/lit8 v1, v1, 0x1

    .line 354
    move v2, v0

    .line 351
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 357
    :cond_17
    return v2
.end method

.method public getItem(I)Lcom/airbnb/android/interfaces/TravelInboxItem;
    .registers 6
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 314
    iget-object v3, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mAlerts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_28

    .line 315
    iget-object v3, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mAlerts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge p1, v3, :cond_1f

    .line 316
    iget-object v1, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mAlerts:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/interfaces/TravelInboxItem;

    .line 326
    :goto_1e
    return-object v1

    .line 318
    :cond_1f
    iget-object v3, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mAlerts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr p1, v3

    .line 320
    :cond_28
    iget-object v3, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mMessageThreads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6d

    .line 321
    iget-object v3, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mAlerts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4c

    move v0, v1

    .line 323
    .local v0, "headerShown":Z
    :goto_39
    if-nez v0, :cond_4e

    iget-object v3, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mMessageThreads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_4e

    .line 324
    iget-object v1, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mMessageThreads:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/interfaces/TravelInboxItem;

    goto :goto_1e

    .end local v0    # "headerShown":Z
    :cond_4c
    move v0, v2

    .line 321
    goto :goto_39

    .line 325
    .restart local v0    # "headerShown":Z
    :cond_4e
    iget-object v3, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mMessageThreads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge p1, v3, :cond_63

    .line 326
    iget-object v1, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mMessageThreads:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/interfaces/TravelInboxItem;

    goto :goto_1e

    .line 329
    :cond_63
    iget-object v3, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mMessageThreads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v0, :cond_76

    :goto_6b
    add-int/2addr v1, v3

    sub-int/2addr p1, v1

    .line 331
    .end local v0    # "headerShown":Z
    :cond_6d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Index out of bounds. Probably bad logic in TravelInboxAdapter.getItem"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v0    # "headerShown":Z
    :cond_76
    move v1, v2

    .line 329
    goto :goto_6b
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->getItem(I)Lcom/airbnb/android/interfaces/TravelInboxItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 336
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 84
    sget-object v0, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->Header:Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->ordinal()I

    move-result v0

    .line 90
    :goto_c
    return v0

    .line 85
    :cond_d
    iget-boolean v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mRemainingData:Z

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_20

    .line 86
    sget-object v0, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->Loading:Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->ordinal()I

    move-result v0

    goto :goto_c

    .line 87
    :cond_20
    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_39

    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-gt p1, v0, :cond_39

    .line 88
    sget-object v0, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->Alert:Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->ordinal()I

    move-result v0

    goto :goto_c

    .line 90
    :cond_39
    sget-object v0, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->MessageThread:Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->ordinal()I

    move-result v0

    goto :goto_c
.end method

.method public getMessageThreads()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/MessageThread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mMessageThreads:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 18
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 123
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->getItemViewType(I)I

    move-result v11

    sget-object v12, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->Loading:Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    invoke-virtual {v12}, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->ordinal()I

    move-result v12

    if-ne v11, v12, :cond_26

    .line 124
    invoke-direct {p0}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->loadMore()V

    .line 126
    if-nez p2, :cond_23

    .line 127
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f03014c

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_23
    move-object/from16 v9, p2

    .line 204
    .end local p2    # "v":Landroid/view/View;
    .local v9, "v":Landroid/view/View;
    :goto_25
    return-object v9

    .line 132
    .end local v9    # "v":Landroid/view/View;
    .restart local p2    # "v":Landroid/view/View;
    :cond_26
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->getItemViewType(I)I

    move-result v11

    sget-object v12, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->Header:Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    invoke-virtual {v12}, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->ordinal()I

    move-result v12

    if-ne v11, v12, :cond_57

    .line 133
    if-nez p2, :cond_42

    .line 134
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0301e0

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 136
    :cond_42
    const v11, 0x7f080512

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->getHeaderTitle(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v9, p2

    .line 137
    .end local p2    # "v":Landroid/view/View;
    .restart local v9    # "v":Landroid/view/View;
    goto :goto_25

    .line 140
    .end local v9    # "v":Landroid/view/View;
    .restart local p2    # "v":Landroid/view/View;
    :cond_57
    if-nez p2, :cond_be

    .line 141
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f030149

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 143
    new-instance v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;-><init>(Lcom/airbnb/android/adapters/TravelInboxAdapter$1;)V

    .line 145
    .local v10, "viewHolder":Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;
    const v11, 0x7f080378

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 146
    const v11, 0x7f080215

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 147
    const v11, 0x7f08037a

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;->status:Landroid/widget/TextView;

    .line 148
    const v11, 0x7f080379

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;->time:Landroid/widget/TextView;

    .line 149
    const v11, 0x7f080358

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/airbnb/android/views/HaloImageView;

    iput-object v11, v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;->profileImage:Lcom/airbnb/android/views/HaloImageView;

    .line 150
    const v11, 0x7f080061

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;->unreadDot:Landroid/view/View;

    .line 152
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    .end local v10    # "viewHolder":Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;
    :cond_be
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;

    .line 157
    .restart local v10    # "viewHolder":Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->getItem(I)Lcom/airbnb/android/interfaces/TravelInboxItem;

    move-result-object v4

    .line 160
    .local v4, "inboxItem":Lcom/airbnb/android/interfaces/TravelInboxItem;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    instance-of v11, v4, Lcom/airbnb/android/models/Alert;

    if-eqz v11, :cond_17d

    const v11, 0x7f0a00a4

    :goto_d3
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 163
    invoke-interface {v4}, Lcom/airbnb/android/interfaces/TravelInboxItem;->getType()Lcom/airbnb/android/interfaces/TravelInboxItem$Type;

    move-result-object v11

    sget-object v12, Lcom/airbnb/android/interfaces/TravelInboxItem$Type;->MessageThread:Lcom/airbnb/android/interfaces/TravelInboxItem$Type;

    if-ne v11, v12, :cond_182

    .line 164
    iget-object v11, v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;->profileImage:Lcom/airbnb/android/views/HaloImageView;

    invoke-interface {v4}, Lcom/airbnb/android/interfaces/TravelInboxItem;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 169
    :goto_ed
    iget-object v11, v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-interface {v4}, Lcom/airbnb/android/interfaces/TravelInboxItem;->getTravelInboxTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v11, v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-interface {v4}, Lcom/airbnb/android/interfaces/TravelInboxItem;->getTravelInboxTime()Ljava/util/Date;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/airbnb/android/utils/DateHelper;->getRelativeDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v11, v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-interface {v4}, Lcom/airbnb/android/interfaces/TravelInboxItem;->getTravelInboxSubtitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v11, v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    const/4 v5, 0x0

    .line 175
    .local v5, "isReview":Z
    invoke-interface {v4}, Lcom/airbnb/android/interfaces/TravelInboxItem;->getType()Lcom/airbnb/android/interfaces/TravelInboxItem$Type;

    move-result-object v11

    sget-object v12, Lcom/airbnb/android/interfaces/TravelInboxItem$Type;->Alert:Lcom/airbnb/android/interfaces/TravelInboxItem$Type;

    if-ne v11, v12, :cond_127

    move-object v11, v4

    .line 176
    check-cast v11, Lcom/airbnb/android/models/Alert;

    invoke-virtual {v11}, Lcom/airbnb/android/models/Alert;->getAlertTypeEnum()Lcom/airbnb/android/models/Alert$AlertType;

    move-result-object v11

    sget-object v12, Lcom/airbnb/android/models/Alert$AlertType;->LeaveReviews:Lcom/airbnb/android/models/Alert$AlertType;

    if-ne v11, v12, :cond_18d

    const/4 v5, 0x1

    .line 179
    :cond_127
    :goto_127
    iget-object v11, v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 180
    .local v6, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v12, 0x0

    if-eqz v5, :cond_18f

    iget-object v11, v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getId()I

    move-result v11

    :goto_138
    invoke-virtual {v6, v12, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 181
    iget-object v11, v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-static {v11, v5}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 183
    const/4 v3, 0x1

    .line 184
    .local v3, "hasStatus":Z
    iget-object v11, v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;->status:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    invoke-interface {v4}, Lcom/airbnb/android/interfaces/TravelInboxItem;->getTravelInboxStatusTextColor()I

    move-result v8

    .line 187
    .local v8, "statusTextColor":I
    if-lez v8, :cond_15a

    .line 188
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 189
    .local v1, "color":I
    iget-object v11, v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    .end local v1    # "color":I
    :cond_15a
    invoke-interface {v4}, Lcom/airbnb/android/interfaces/TravelInboxItem;->getTravelInboxStatusStringId()I

    move-result v7

    .line 193
    .local v7, "statusStringId":I
    if-lez v7, :cond_191

    .line 194
    iget-object v11, v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(I)V

    .line 200
    :goto_165
    iget-object v12, v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;->description:Landroid/widget/TextView;

    if-eqz v3, :cond_19a

    const/4 v11, 0x1

    :goto_16a
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 202
    iget-object v12, v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;->unreadDot:Landroid/view/View;

    invoke-interface {v4}, Lcom/airbnb/android/interfaces/TravelInboxItem;->isTravelInboxUnread()Z

    move-result v11

    if-eqz v11, :cond_19c

    const/4 v11, 0x0

    :goto_176
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v9, p2

    .line 204
    .end local p2    # "v":Landroid/view/View;
    .restart local v9    # "v":Landroid/view/View;
    goto/16 :goto_25

    .line 160
    .end local v3    # "hasStatus":Z
    .end local v5    # "isReview":Z
    .end local v6    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "statusStringId":I
    .end local v8    # "statusTextColor":I
    .end local v9    # "v":Landroid/view/View;
    .restart local p2    # "v":Landroid/view/View;
    :cond_17d
    const v11, 0x7f0a008f

    goto/16 :goto_d3

    .line 166
    :cond_182
    iget-object v11, v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;->profileImage:Lcom/airbnb/android/views/HaloImageView;

    invoke-interface {v4}, Lcom/airbnb/android/interfaces/TravelInboxItem;->getTravelInboxImageUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/airbnb/android/views/HaloImageView;->setImageUrl(Ljava/lang/String;)V

    goto/16 :goto_ed

    .line 176
    .restart local v5    # "isReview":Z
    :cond_18d
    const/4 v5, 0x0

    goto :goto_127

    .line 180
    .restart local v6    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_18f
    const/4 v11, -0x1

    goto :goto_138

    .line 196
    .restart local v3    # "hasStatus":Z
    .restart local v7    # "statusStringId":I
    .restart local v8    # "statusTextColor":I
    :cond_191
    const/4 v3, 0x0

    .line 197
    iget-object v11, v10, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;->status:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_165

    .line 200
    :cond_19a
    const/4 v11, 0x2

    goto :goto_16a

    .line 202
    :cond_19c
    const/16 v11, 0x8

    goto :goto_176
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 78
    invoke-static {}, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->values()[Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->getItemViewType(I)I

    move-result v0

    .line 97
    .local v0, "viewType":I
    sget-object v1, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->Header:Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_16

    sget-object v1, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->Loading:Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public isHeaderItem(I)Z
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->getItemViewType(I)I

    move-result v0

    sget-object v1, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->Header:Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setCallback(Lcom/airbnb/android/adapters/TravelInboxAdapter$TravelInboxCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/airbnb/android/adapters/TravelInboxAdapter$TravelInboxCallback;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter;->mCallback:Lcom/airbnb/android/adapters/TravelInboxAdapter$TravelInboxCallback;

    .line 74
    return-void
.end method
