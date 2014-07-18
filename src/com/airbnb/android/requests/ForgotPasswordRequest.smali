.class public Lcom/airbnb/android/requests/ForgotPasswordRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "ForgotPasswordRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/ForgotPasswordRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 5
    .param p1, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ForgotPasswordRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ForgotPasswordRequest;>;"
    const-string/jumbo v0, "forgot_password"

    invoke-static {p1}, Lcom/airbnb/android/requests/ForgotPasswordRequest;->getParams(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 9
    return-void
.end method

.method private static getParams(Ljava/lang/String;)Ljava/util/Properties;
    .registers 3
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 12
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 13
    .local v0, "props":Ljava/util/Properties;
    const-string/jumbo v1, "email"

    invoke-virtual {v0, v1, p0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-object v0
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method
