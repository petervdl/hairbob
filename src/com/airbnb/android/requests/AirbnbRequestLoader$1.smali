.class Lcom/airbnb/android/requests/AirbnbRequestLoader$1;
.super Ljava/lang/Object;
.source "AirbnbRequestLoader.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/requests/AirbnbRequestLoader;-><init>(Landroid/content/Context;Lcom/airbnb/android/requests/AirbnbRequest;)V
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
.field final synthetic this$0:Lcom/airbnb/android/requests/AirbnbRequestLoader;


# direct methods
.method constructor <init>(Lcom/airbnb/android/requests/AirbnbRequestLoader;)V
    .registers 2

    .prologue
    .line 20
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequestLoader$1;, "Lcom/airbnb/android/requests/AirbnbRequestLoader.1;"
    iput-object p1, p0, Lcom/airbnb/android/requests/AirbnbRequestLoader$1;->this$0:Lcom/airbnb/android/requests/AirbnbRequestLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 23
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequestLoader$1;, "Lcom/airbnb/android/requests/AirbnbRequestLoader.1;"
    iget-object v0, p0, Lcom/airbnb/android/requests/AirbnbRequestLoader$1;->this$0:Lcom/airbnb/android/requests/AirbnbRequestLoader;

    iput-object p1, v0, Lcom/airbnb/android/requests/AirbnbRequestLoader;->error:Lcom/android/volley/VolleyError;

    .line 24
    iget-object v0, p0, Lcom/airbnb/android/requests/AirbnbRequestLoader$1;->this$0:Lcom/airbnb/android/requests/AirbnbRequestLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/requests/AirbnbRequestLoader;->deliverResult(Lcom/airbnb/android/requests/AirbnbRequest;)V

    .line 25
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/AirbnbRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequestLoader$1;, "Lcom/airbnb/android/requests/AirbnbRequestLoader.1;"
    .local p1, "response":Lcom/airbnb/android/requests/AirbnbRequest;, "TT;"
    iget-object v0, p0, Lcom/airbnb/android/requests/AirbnbRequestLoader$1;->this$0:Lcom/airbnb/android/requests/AirbnbRequestLoader;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/requests/AirbnbRequestLoader;->deliverResult(Lcom/airbnb/android/requests/AirbnbRequest;)V

    .line 30
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 20
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequestLoader$1;, "Lcom/airbnb/android/requests/AirbnbRequestLoader.1;"
    check-cast p1, Lcom/airbnb/android/requests/AirbnbRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/requests/AirbnbRequestLoader$1;->onResponse(Lcom/airbnb/android/requests/AirbnbRequest;)V

    return-void
.end method
