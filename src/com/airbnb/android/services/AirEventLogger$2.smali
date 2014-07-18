.class Lcom/airbnb/android/services/AirEventLogger$2;
.super Ljava/lang/Object;
.source "AirEventLogger.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/services/AirEventLogger;->makeBatchNetworkRequest(Lorg/json/JSONArray;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/services/AirEventLogger;


# direct methods
.method constructor <init>(Lcom/airbnb/android/services/AirEventLogger;)V
    .registers 2

    .prologue
    .line 264
    iput-object p1, p0, Lcom/airbnb/android/services/AirEventLogger$2;->this$0:Lcom/airbnb/android/services/AirEventLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 268
    sget-object v0, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Error uploading batch of analytics"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method
