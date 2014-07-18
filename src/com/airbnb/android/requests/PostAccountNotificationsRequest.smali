.class public Lcom/airbnb/android/requests/PostAccountNotificationsRequest;
.super Lcom/airbnb/android/requests/AccountNotificationsRequest;
.source "PostAccountNotificationsRequest.java"


# direct methods
.method public constructor <init>(Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 3
    .param p1, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/AccountNotificationsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/AccountNotificationsRequest;>;"
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/requests/AccountNotificationsRequest;-><init>(Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 9
    return-void
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 13
    const/4 v0, 0x1

    return v0
.end method
