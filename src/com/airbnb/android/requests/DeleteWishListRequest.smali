.class public Lcom/airbnb/android/requests/DeleteWishListRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "DeleteWishListRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/DeleteWishListRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public result:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "wishlistId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/DeleteWishListRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/DeleteWishListRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "collections/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method
