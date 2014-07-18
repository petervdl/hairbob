.class Lcom/airbnb/android/services/OfficialIdIntentService$1;
.super Ljava/lang/Object;
.source "OfficialIdIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/services/OfficialIdIntentService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/services/OfficialIdIntentService;


# direct methods
.method constructor <init>(Lcom/airbnb/android/services/OfficialIdIntentService;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/airbnb/android/services/OfficialIdIntentService$1;->this$0:Lcom/airbnb/android/services/OfficialIdIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 80
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v2, Lcom/airbnb/android/events/OfficialIDStatusEvent;

    iget-object v0, p0, Lcom/airbnb/android/services/OfficialIdIntentService$1;->this$0:Lcom/airbnb/android/services/OfficialIdIntentService;

    # getter for: Lcom/airbnb/android/services/OfficialIdIntentService;->mState:Lcom/airbnb/android/services/OfficialIdIntentService$State;
    invoke-static {v0}, Lcom/airbnb/android/services/OfficialIdIntentService;->access$000(Lcom/airbnb/android/services/OfficialIdIntentService;)Lcom/airbnb/android/services/OfficialIdIntentService$State;

    move-result-object v0

    sget-object v3, Lcom/airbnb/android/services/OfficialIdIntentService$State;->SUCCESS:Lcom/airbnb/android/services/OfficialIdIntentService$State;

    if-ne v0, v3, :cond_16

    const/4 v0, 0x1

    :goto_f
    invoke-direct {v2, v0}, Lcom/airbnb/android/events/OfficialIDStatusEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 81
    return-void

    .line 80
    :cond_16
    const/4 v0, 0x0

    goto :goto_f
.end method
