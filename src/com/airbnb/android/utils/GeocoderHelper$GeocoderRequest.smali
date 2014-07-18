.class Lcom/airbnb/android/utils/GeocoderHelper$GeocoderRequest;
.super Lcom/airbnb/android/requests/ExternalStringRequest;
.source "GeocoderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/utils/GeocoderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GeocoderRequest"
.end annotation


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
    .line 45
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/requests/ExternalStringRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 46
    return-void
.end method
