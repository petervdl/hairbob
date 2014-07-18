.class public Lcom/airbnb/android/requests/PlacesSearchRequest;
.super Lcom/airbnb/android/requests/ExternalStringRequest;
.source "PlacesSearchRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/airbnb/android/utils/Strap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/utils/Strap;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/requests/ExternalStringRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 9
    return-void
.end method
