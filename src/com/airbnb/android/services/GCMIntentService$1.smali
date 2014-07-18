.class Lcom/airbnb/android/services/GCMIntentService$1;
.super Ljava/lang/Object;
.source "GCMIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/services/GCMIntentService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/services/GCMIntentService;

.field final synthetic val$finalLongId:J

.field final synthetic val$finalMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/services/GCMIntentService;JLjava/lang/String;)V
    .registers 5

    .prologue
    .line 206
    iput-object p1, p0, Lcom/airbnb/android/services/GCMIntentService$1;->this$0:Lcom/airbnb/android/services/GCMIntentService;

    iput-wide p2, p0, Lcom/airbnb/android/services/GCMIntentService$1;->val$finalLongId:J

    iput-object p4, p0, Lcom/airbnb/android/services/GCMIntentService$1;->val$finalMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 210
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/MessageReceivedEvent;

    iget-wide v2, p0, Lcom/airbnb/android/services/GCMIntentService$1;->val$finalLongId:J

    iget-object v4, p0, Lcom/airbnb/android/services/GCMIntentService$1;->val$finalMessage:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/airbnb/android/events/MessageReceivedEvent;-><init>(JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 211
    return-void
.end method
