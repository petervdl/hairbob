.class public Lcom/airbnb/android/utils/InfiniteAdapter;
.super Lcom/airbnb/android/utils/AdapterWrapper;
.source "InfiniteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<*>;S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/airbnb/android/utils/AdapterWrapper",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private mFactory:Lcom/airbnb/android/requests/AirRequestFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/android/requests/AirRequestFactory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mKeepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPendingResource:I

.field private mPendingView:Landroid/view/View;

.field private mRequest:Lcom/airbnb/android/requests/AirbnbRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRequestListener:Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mRequestMarker:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/widget/ArrayAdapter;ILcom/airbnb/android/requests/AirRequestFactory;Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V
    .registers 7
    .param p2, "pendingResource"    # I
    .param p4, "manager"    # Lcom/airbnb/android/interfaces/RequestLifecycleManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<TS;>;I",
            "Lcom/airbnb/android/requests/AirRequestFactory",
            "<TT;>;",
            "Lcom/airbnb/android/interfaces/RequestLifecycleManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/airbnb/android/utils/InfiniteAdapter;, "Lcom/airbnb/android/utils/InfiniteAdapter<TT;TS;>;"
    .local p1, "wrapped":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TS;>;"
    .local p3, "factory":Lcom/airbnb/android/requests/AirRequestFactory;, "Lcom/airbnb/android/requests/AirRequestFactory<TT;>;"
    invoke-direct {p0, p1}, Lcom/airbnb/android/utils/AdapterWrapper;-><init>(Landroid/widget/ArrayAdapter;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mPendingView:Landroid/view/View;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mKeepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mPendingResource:I

    .line 56
    iput p2, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mPendingResource:I

    .line 57
    iput-object p3, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mFactory:Lcom/airbnb/android/requests/AirRequestFactory;

    .line 58
    invoke-interface {p4}, Lcom/airbnb/android/interfaces/RequestLifecycleManager;->getRequestMarker()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mRequestMarker:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/utils/InfiniteAdapter;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/utils/InfiniteAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mPendingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/utils/InfiniteAdapter;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/utils/InfiniteAdapter;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mPendingView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/utils/InfiniteAdapter;)Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/utils/InfiniteAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mRequestListener:Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/utils/InfiniteAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/utils/InfiniteAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mKeepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public generateAutoListener()Lcom/airbnb/android/requests/RequestListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/android/requests/RequestListener",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/airbnb/android/utils/InfiniteAdapter;, "Lcom/airbnb/android/utils/InfiniteAdapter<TT;TS;>;"
    new-instance v0, Lcom/airbnb/android/utils/InfiniteAdapter$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/utils/InfiniteAdapter$1;-><init>(Lcom/airbnb/android/utils/InfiniteAdapter;)V

    return-object v0
.end method

.method public getActualCount()I
    .registers 2

    .prologue
    .line 79
    .local p0, "this":Lcom/airbnb/android/utils/InfiniteAdapter;, "Lcom/airbnb/android/utils/InfiniteAdapter<TT;TS;>;"
    invoke-super {p0}, Lcom/airbnb/android/utils/AdapterWrapper;->getCount()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 63
    .local p0, "this":Lcom/airbnb/android/utils/InfiniteAdapter;, "Lcom/airbnb/android/utils/InfiniteAdapter<TT;TS;>;"
    invoke-super {p0}, Lcom/airbnb/android/utils/AdapterWrapper;->getCount()I

    move-result v0

    .line 64
    .local v0, "count":I
    if-nez v0, :cond_f

    iget-object v1, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mKeepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_f

    .line 72
    .end local v0    # "count":I
    :cond_e
    :goto_e
    return v0

    .line 68
    .restart local v0    # "count":I
    :cond_f
    iget-object v1, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mKeepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 84
    .local p0, "this":Lcom/airbnb/android/utils/InfiniteAdapter;, "Lcom/airbnb/android/utils/InfiniteAdapter<TT;TS;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/utils/InfiniteAdapter;->getWrappedAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_c

    .line 85
    const/4 v0, -0x1

    .line 88
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1}, Lcom/airbnb/android/utils/AdapterWrapper;->getItemViewType(I)I

    move-result v0

    goto :goto_b
.end method

.method protected getPendingView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 164
    .local p0, "this":Lcom/airbnb/android/utils/InfiniteAdapter;, "Lcom/airbnb/android/utils/InfiniteAdapter<TT;TS;>;"
    if-eqz p1, :cond_17

    .line 165
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 166
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mPendingResource:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 169
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_17
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "You must either override getPendingView() or supply a pending View resource via the constructor"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 104
    .local p0, "this":Lcom/airbnb/android/utils/InfiniteAdapter;, "Lcom/airbnb/android/utils/InfiniteAdapter<TT;TS;>;"
    invoke-super {p0}, Lcom/airbnb/android/utils/AdapterWrapper;->getCount()I

    move-result v1

    if-ne p1, v1, :cond_31

    iget-object v1, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mKeepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 105
    iget-object v1, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mPendingView:Landroid/view/View;

    if-nez v1, :cond_2e

    .line 106
    invoke-virtual {p0, p3}, Lcom/airbnb/android/utils/InfiniteAdapter;->getPendingView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mPendingView:Landroid/view/View;

    .line 107
    iget-object v1, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mFactory:Lcom/airbnb/android/requests/AirRequestFactory;

    invoke-super {p0}, Lcom/airbnb/android/utils/AdapterWrapper;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/airbnb/android/utils/InfiniteAdapter;->generateAutoListener()Lcom/airbnb/android/requests/RequestListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/requests/AirRequestFactory;->getNextOffset(ILcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/AirbnbRequest;

    move-result-object v0

    .line 108
    .local v0, "t":Lcom/airbnb/android/requests/AirbnbRequest;, "TT;"
    iget-object v1, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mRequestMarker:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/requests/AirbnbRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 109
    invoke-virtual {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->execute()V

    .line 112
    .end local v0    # "t":Lcom/airbnb/android/requests/AirbnbRequest;, "TT;"
    :cond_2e
    iget-object v1, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mPendingView:Landroid/view/View;

    .line 115
    :goto_30
    return-object v1

    :cond_31
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/utils/AdapterWrapper;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_30
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 93
    .local p0, "this":Lcom/airbnb/android/utils/InfiniteAdapter;, "Lcom/airbnb/android/utils/InfiniteAdapter<TT;TS;>;"
    invoke-super {p0}, Lcom/airbnb/android/utils/AdapterWrapper;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ArrayAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lcom/airbnb/android/utils/InfiniteAdapter;, "Lcom/airbnb/android/utils/InfiniteAdapter<TT;TS;>;"
    invoke-super {p0}, Lcom/airbnb/android/utils/AdapterWrapper;->getWrappedAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 98
    .local p0, "this":Lcom/airbnb/android/utils/InfiniteAdapter;, "Lcom/airbnb/android/utils/InfiniteAdapter<TT;TS;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/utils/InfiniteAdapter;->getWrappedAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-eq p1, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onException(Landroid/view/View;Ljava/lang/Exception;)Z
    .registers 5
    .param p1, "pendingView"    # Landroid/view/View;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 158
    .local p0, "this":Lcom/airbnb/android/utils/InfiniteAdapter;, "Lcom/airbnb/android/utils/InfiniteAdapter<TT;TS;>;"
    const-class v0, Lcom/airbnb/android/utils/InfiniteAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Exception in InfiniteAdapter background"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public refresh()V
    .registers 3

    .prologue
    .line 182
    .local p0, "this":Lcom/airbnb/android/utils/InfiniteAdapter;, "Lcom/airbnb/android/utils/InfiniteAdapter<TT;TS;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/utils/InfiniteAdapter;->getWrappedAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 183
    invoke-virtual {p0}, Lcom/airbnb/android/utils/InfiniteAdapter;->getWrappedAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mPendingView:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mRequest:Lcom/airbnb/android/requests/AirbnbRequest;

    if-eqz v0, :cond_1a

    .line 186
    iget-object v0, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mRequest:Lcom/airbnb/android/requests/AirbnbRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->cancel()V

    .line 188
    :cond_1a
    iget-object v0, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mKeepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 189
    invoke-virtual {p0}, Lcom/airbnb/android/utils/InfiniteAdapter;->notifyDataSetChanged()V

    .line 190
    return-void
.end method

.method public setRequestListener(Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lcom/airbnb/android/utils/InfiniteAdapter;, "Lcom/airbnb/android/utils/InfiniteAdapter<TT;TS;>;"
    .local p1, "listener":Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;, "Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener<TT;>;"
    iput-object p1, p0, Lcom/airbnb/android/utils/InfiniteAdapter;->mRequestListener:Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;

    .line 179
    return-void
.end method
