.class Lcom/airbnb/android/utils/InfiniteAdapter$1;
.super Ljava/lang/Object;
.source "InfiniteAdapter.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/utils/InfiniteAdapter;->generateAutoListener()Lcom/airbnb/android/requests/RequestListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/utils/InfiniteAdapter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/utils/InfiniteAdapter;)V
    .registers 2

    .prologue
    .line 119
    .local p0, "this":Lcom/airbnb/android/utils/InfiniteAdapter$1;, "Lcom/airbnb/android/utils/InfiniteAdapter.1;"
    iput-object p1, p0, Lcom/airbnb/android/utils/InfiniteAdapter$1;->this$0:Lcom/airbnb/android/utils/InfiniteAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 149
    .local p0, "this":Lcom/airbnb/android/utils/InfiniteAdapter$1;, "Lcom/airbnb/android/utils/InfiniteAdapter.1;"
    iget-object v0, p0, Lcom/airbnb/android/utils/InfiniteAdapter$1;->this$0:Lcom/airbnb/android/utils/InfiniteAdapter;

    # getter for: Lcom/airbnb/android/utils/InfiniteAdapter;->mRequestListener:Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;
    invoke-static {v0}, Lcom/airbnb/android/utils/InfiniteAdapter;->access$100(Lcom/airbnb/android/utils/InfiniteAdapter;)Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 150
    iget-object v0, p0, Lcom/airbnb/android/utils/InfiniteAdapter$1;->this$0:Lcom/airbnb/android/utils/InfiniteAdapter;

    # getter for: Lcom/airbnb/android/utils/InfiniteAdapter;->mRequestListener:Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;
    invoke-static {v0}, Lcom/airbnb/android/utils/InfiniteAdapter;->access$100(Lcom/airbnb/android/utils/InfiniteAdapter;)Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 152
    :cond_11
    iget-object v0, p0, Lcom/airbnb/android/utils/InfiniteAdapter$1;->this$0:Lcom/airbnb/android/utils/InfiniteAdapter;

    iget-object v1, p0, Lcom/airbnb/android/utils/InfiniteAdapter$1;->this$0:Lcom/airbnb/android/utils/InfiniteAdapter;

    # getter for: Lcom/airbnb/android/utils/InfiniteAdapter;->mPendingView:Landroid/view/View;
    invoke-static {v1}, Lcom/airbnb/android/utils/InfiniteAdapter;->access$000(Lcom/airbnb/android/utils/InfiniteAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/airbnb/android/utils/InfiniteAdapter;->onException(Landroid/view/View;Ljava/lang/Exception;)Z

    .line 153
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/AirbnbRequest;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/airbnb/android/utils/InfiniteAdapter$1;, "Lcom/airbnb/android/utils/InfiniteAdapter.1;"
    .local p1, "response":Lcom/airbnb/android/requests/AirbnbRequest;, "TT;"
    iget-object v2, p0, Lcom/airbnb/android/utils/InfiniteAdapter$1;->this$0:Lcom/airbnb/android/utils/InfiniteAdapter;

    const/4 v3, 0x0

    # setter for: Lcom/airbnb/android/utils/InfiniteAdapter;->mPendingView:Landroid/view/View;
    invoke-static {v2, v3}, Lcom/airbnb/android/utils/InfiniteAdapter;->access$002(Lcom/airbnb/android/utils/InfiniteAdapter;Landroid/view/View;)Landroid/view/View;

    .line 126
    iget-object v2, p0, Lcom/airbnb/android/utils/InfiniteAdapter$1;->this$0:Lcom/airbnb/android/utils/InfiniteAdapter;

    # getter for: Lcom/airbnb/android/utils/InfiniteAdapter;->mRequestListener:Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;
    invoke-static {v2}, Lcom/airbnb/android/utils/InfiniteAdapter;->access$100(Lcom/airbnb/android/utils/InfiniteAdapter;)Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 127
    iget-object v2, p0, Lcom/airbnb/android/utils/InfiniteAdapter$1;->this$0:Lcom/airbnb/android/utils/InfiniteAdapter;

    # getter for: Lcom/airbnb/android/utils/InfiniteAdapter;->mRequestListener:Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;
    invoke-static {v2}, Lcom/airbnb/android/utils/InfiniteAdapter;->access$100(Lcom/airbnb/android/utils/InfiniteAdapter;)Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;->onResponse(Ljava/lang/Object;)V

    .line 130
    :cond_17
    iget-object v2, p0, Lcom/airbnb/android/utils/InfiniteAdapter$1;->this$0:Lcom/airbnb/android/utils/InfiniteAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/utils/InfiniteAdapter;->getWrappedAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v2

    instance-of v2, v2, Lcom/airbnb/android/requests/AirRequestFactory$Consumer;

    if-eqz v2, :cond_25

    instance-of v2, p1, Lcom/airbnb/android/requests/AirRequestFactory$Provider;

    if-nez v2, :cond_67

    .line 131
    :cond_25
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "For InfiniteStateAdapter, the adapter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/utils/InfiniteAdapter$1;->this$0:Lcom/airbnb/android/utils/InfiniteAdapter;

    invoke-virtual {v4}, Lcom/airbnb/android/utils/InfiniteAdapter;->getWrappedAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " must implement Consumer, and the request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " must implement Provider."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_67
    iget-object v2, p0, Lcom/airbnb/android/utils/InfiniteAdapter$1;->this$0:Lcom/airbnb/android/utils/InfiniteAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/utils/InfiniteAdapter;->getWrappedAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/requests/AirRequestFactory$Consumer;

    .local v0, "consumingAdapter":Lcom/airbnb/android/requests/AirRequestFactory$Consumer;, "Lcom/airbnb/android/requests/AirRequestFactory$Consumer<TS;>;"
    move-object v1, p1

    .line 136
    check-cast v1, Lcom/airbnb/android/requests/AirRequestFactory$Provider;

    .line 139
    .local v1, "providingRequest":Lcom/airbnb/android/requests/AirRequestFactory$Provider;, "Lcom/airbnb/android/requests/AirRequestFactory$Provider<TS;>;"
    invoke-interface {v1}, Lcom/airbnb/android/requests/AirRequestFactory$Provider;->provide()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_82

    invoke-interface {v1}, Lcom/airbnb/android/requests/AirRequestFactory$Provider;->provide()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_90

    .line 140
    :cond_82
    iget-object v2, p0, Lcom/airbnb/android/utils/InfiniteAdapter$1;->this$0:Lcom/airbnb/android/utils/InfiniteAdapter;

    # getter for: Lcom/airbnb/android/utils/InfiniteAdapter;->mKeepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/airbnb/android/utils/InfiniteAdapter;->access$200(Lcom/airbnb/android/utils/InfiniteAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 144
    :goto_8c
    invoke-interface {v0}, Lcom/airbnb/android/requests/AirRequestFactory$Consumer;->notifyDataSetChanged()V

    .line 145
    return-void

    .line 142
    :cond_90
    invoke-interface {v1}, Lcom/airbnb/android/requests/AirRequestFactory$Provider;->provide()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/airbnb/android/requests/AirRequestFactory$Consumer;->addAll(Ljava/util/Collection;)V

    goto :goto_8c
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 119
    .local p0, "this":Lcom/airbnb/android/utils/InfiniteAdapter$1;, "Lcom/airbnb/android/utils/InfiniteAdapter.1;"
    check-cast p1, Lcom/airbnb/android/requests/AirbnbRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/utils/InfiniteAdapter$1;->onResponse(Lcom/airbnb/android/requests/AirbnbRequest;)V

    return-void
.end method
