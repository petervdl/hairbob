.class public Lcom/airbnb/android/requests/AirbnbRequestLoader;
.super Landroid/support/v4/content/Loader;
.source "AirbnbRequestLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/airbnb/android/requests/AirbnbRequest;",
        ">",
        "Landroid/support/v4/content/Loader",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public error:Lcom/android/volley/VolleyError;

.field private mListener:Lcom/airbnb/android/requests/RequestListener;

.field private mRequest:Lcom/airbnb/android/requests/AirbnbRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mResponse:Lcom/airbnb/android/requests/AirbnbRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/android/requests/AirbnbRequest;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequestLoader;, "Lcom/airbnb/android/requests/AirbnbRequestLoader<TT;>;"
    .local p2, "request":Lcom/airbnb/android/requests/AirbnbRequest;, "TT;"
    invoke-direct {p0, p1}, Landroid/support/v4/content/Loader;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lcom/airbnb/android/requests/AirbnbRequestLoader;->mRequest:Lcom/airbnb/android/requests/AirbnbRequest;

    .line 20
    new-instance v0, Lcom/airbnb/android/requests/AirbnbRequestLoader$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/requests/AirbnbRequestLoader$1;-><init>(Lcom/airbnb/android/requests/AirbnbRequestLoader;)V

    iput-object v0, p0, Lcom/airbnb/android/requests/AirbnbRequestLoader;->mListener:Lcom/airbnb/android/requests/RequestListener;

    .line 33
    iget-object v0, p0, Lcom/airbnb/android/requests/AirbnbRequestLoader;->mListener:Lcom/airbnb/android/requests/RequestListener;

    invoke-virtual {p2, v0}, Lcom/airbnb/android/requests/AirbnbRequest;->setLoaderRequestListener(Lcom/airbnb/android/requests/RequestListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/airbnb/android/requests/AirbnbRequest;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequestLoader;, "Lcom/airbnb/android/requests/AirbnbRequestLoader<TT;>;"
    .local p1, "data":Lcom/airbnb/android/requests/AirbnbRequest;, "TT;"
    iput-object p1, p0, Lcom/airbnb/android/requests/AirbnbRequestLoader;->mResponse:Lcom/airbnb/android/requests/AirbnbRequest;

    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/content/Loader;->deliverResult(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 8
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequestLoader;, "Lcom/airbnb/android/requests/AirbnbRequestLoader<TT;>;"
    check-cast p1, Lcom/airbnb/android/requests/AirbnbRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/requests/AirbnbRequestLoader;->deliverResult(Lcom/airbnb/android/requests/AirbnbRequest;)V

    return-void
.end method

.method protected onForceLoad()V
    .registers 2

    .prologue
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequestLoader;, "Lcom/airbnb/android/requests/AirbnbRequestLoader<TT;>;"
    const/4 v0, 0x0

    .line 53
    invoke-super {p0}, Landroid/support/v4/content/Loader;->onForceLoad()V

    .line 55
    iput-object v0, p0, Lcom/airbnb/android/requests/AirbnbRequestLoader;->mResponse:Lcom/airbnb/android/requests/AirbnbRequest;

    .line 56
    iput-object v0, p0, Lcom/airbnb/android/requests/AirbnbRequestLoader;->error:Lcom/android/volley/VolleyError;

    .line 58
    iget-object v0, p0, Lcom/airbnb/android/requests/AirbnbRequestLoader;->mRequest:Lcom/airbnb/android/requests/AirbnbRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->execute()V

    .line 59
    return-void
.end method

.method protected onStartLoading()V
    .registers 2

    .prologue
    .line 38
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequestLoader;, "Lcom/airbnb/android/requests/AirbnbRequestLoader<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/requests/AirbnbRequestLoader;->mResponse:Lcom/airbnb/android/requests/AirbnbRequest;

    if-eqz v0, :cond_a

    .line 39
    iget-object v0, p0, Lcom/airbnb/android/requests/AirbnbRequestLoader;->mResponse:Lcom/airbnb/android/requests/AirbnbRequest;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/AirbnbRequestLoader;->deliverResult(Lcom/airbnb/android/requests/AirbnbRequest;)V

    .line 43
    :goto_9
    return-void

    .line 41
    :cond_a
    invoke-virtual {p0}, Lcom/airbnb/android/requests/AirbnbRequestLoader;->forceLoad()V

    goto :goto_9
.end method

.method protected onStopLoading()V
    .registers 2

    .prologue
    .line 63
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequestLoader;, "Lcom/airbnb/android/requests/AirbnbRequestLoader<TT;>;"
    invoke-super {p0}, Landroid/support/v4/content/Loader;->onStopLoading()V

    .line 65
    iget-object v0, p0, Lcom/airbnb/android/requests/AirbnbRequestLoader;->mRequest:Lcom/airbnb/android/requests/AirbnbRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->cancel()V

    .line 66
    return-void
.end method
