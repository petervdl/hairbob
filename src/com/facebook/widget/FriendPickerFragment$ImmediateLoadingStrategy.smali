.class Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;
.super Lcom/facebook/widget/PickerFragment$LoadingStrategy;
.source "FriendPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FriendPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImmediateLoadingStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/PickerFragment",
        "<",
        "Lcom/facebook/model/GraphUser;",
        ">.",
        "LoadingStrategy;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/FriendPickerFragment;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/FriendPickerFragment;)V
    .registers 2

    .prologue
    .line 240
    iput-object p1, p0, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;->this$0:Lcom/facebook/widget/FriendPickerFragment;

    invoke-direct {p0, p1}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;-><init>(Lcom/facebook/widget/PickerFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/FriendPickerFragment;Lcom/facebook/widget/FriendPickerFragment$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/widget/FriendPickerFragment;
    .param p2, "x1"    # Lcom/facebook/widget/FriendPickerFragment$1;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;-><init>(Lcom/facebook/widget/FriendPickerFragment;)V

    return-void
.end method

.method private followNextLink()V
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;->this$0:Lcom/facebook/widget/FriendPickerFragment;

    invoke-virtual {v0}, Lcom/facebook/widget/FriendPickerFragment;->displayActivityCircle()V

    .line 271
    iget-object v0, p0, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;->loader:Lcom/facebook/widget/GraphObjectPagingLoader;

    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectPagingLoader;->followNextLink()V

    .line 272
    return-void
.end method


# virtual methods
.method protected onLoadFinished(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/widget/SimpleGraphObjectCursor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/GraphObjectPagingLoader",
            "<",
            "Lcom/facebook/model/GraphUser;",
            ">;",
            "Lcom/facebook/widget/SimpleGraphObjectCursor",
            "<",
            "Lcom/facebook/model/GraphUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "loader":Lcom/facebook/widget/GraphObjectPagingLoader;, "Lcom/facebook/widget/GraphObjectPagingLoader<Lcom/facebook/model/GraphUser;>;"
    .local p2, "data":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<Lcom/facebook/model/GraphUser;>;"
    invoke-super {p0, p1, p2}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->onLoadFinished(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    .line 248
    if-eqz p2, :cond_b

    invoke-virtual {p1}, Lcom/facebook/widget/GraphObjectPagingLoader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 265
    :cond_b
    :goto_b
    return-void

    .line 252
    :cond_c
    invoke-virtual {p2}, Lcom/facebook/widget/SimpleGraphObjectCursor;->areMoreObjectsAvailable()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 254
    invoke-direct {p0}, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;->followNextLink()V

    goto :goto_b

    .line 257
    :cond_16
    iget-object v0, p0, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;->this$0:Lcom/facebook/widget/FriendPickerFragment;

    invoke-virtual {v0}, Lcom/facebook/widget/FriendPickerFragment;->hideActivityCircle()V

    .line 261
    invoke-virtual {p2}, Lcom/facebook/widget/SimpleGraphObjectCursor;->isFromCache()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 262
    invoke-virtual {p2}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2d

    const-wide/16 v0, 0x7d0

    :goto_29
    invoke-virtual {p1, v0, v1}, Lcom/facebook/widget/GraphObjectPagingLoader;->refreshOriginalRequest(J)V

    goto :goto_b

    :cond_2d
    const-wide/16 v0, 0x0

    goto :goto_29
.end method
