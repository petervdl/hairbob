.class Lcom/airbnb/android/services/AirEventLogger$1;
.super Ljava/lang/Object;
.source "AirEventLogger.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/services/AirEventLogger;->makeBatchNetworkRequest(Lorg/json/JSONArray;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/airbnb/android/requests/AirAnalyticsBatchRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/services/AirEventLogger;

.field final synthetic val$logName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/services/AirEventLogger;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 256
    iput-object p1, p0, Lcom/airbnb/android/services/AirEventLogger$1;->this$0:Lcom/airbnb/android/services/AirEventLogger;

    iput-object p2, p0, Lcom/airbnb/android/services/AirEventLogger$1;->val$logName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/airbnb/android/requests/AirAnalyticsBatchRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/AirAnalyticsBatchRequest;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/airbnb/android/services/AirEventLogger$1;->this$0:Lcom/airbnb/android/services/AirEventLogger;

    iget-object v1, p0, Lcom/airbnb/android/services/AirEventLogger$1;->val$logName:Ljava/lang/String;

    # invokes: Lcom/airbnb/android/services/AirEventLogger;->deleteArchiveFile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/services/AirEventLogger;->access$000(Lcom/airbnb/android/services/AirEventLogger;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 256
    check-cast p1, Lcom/airbnb/android/requests/AirAnalyticsBatchRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/services/AirEventLogger$1;->onResponse(Lcom/airbnb/android/requests/AirAnalyticsBatchRequest;)V

    return-void
.end method
