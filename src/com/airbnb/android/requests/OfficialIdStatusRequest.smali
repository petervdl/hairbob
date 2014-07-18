.class public Lcom/airbnb/android/requests/OfficialIdStatusRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "OfficialIdStatusRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/OfficialIdStatusRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final ERROR:Ljava/lang/String; = "ERROR"

.field public static final OK:Ljava/lang/String; = "OK"

.field public static final PENDING:Ljava/lang/String; = "PENDING"


# instance fields
.field public status:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/OfficialIdStatusRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/OfficialIdStatusRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "official_id/status/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 14
    return-void
.end method
