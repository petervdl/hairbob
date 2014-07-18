.class Lcom/airbnb/android/services/ArrivalTrackerService$2;
.super Ljava/lang/Object;
.source "ArrivalTrackerService.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/services/ArrivalTrackerService;->markGuestArrival()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/services/ArrivalTrackerService;


# direct methods
.method constructor <init>(Lcom/airbnb/android/services/ArrivalTrackerService;)V
    .registers 2

    .prologue
    .line 245
    iput-object p1, p0, Lcom/airbnb/android/services/ArrivalTrackerService$2;->this$0:Lcom/airbnb/android/services/ArrivalTrackerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/airbnb/android/services/ArrivalTrackerService$2;->this$0:Lcom/airbnb/android/services/ArrivalTrackerService;

    invoke-virtual {v0}, Lcom/airbnb/android/services/ArrivalTrackerService;->stopSelf()V

    .line 259
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "arrival_tracker_update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "arrival_plan"

    iget-object v2, p1, Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;->arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/airbnb/android/services/ArrivalTrackerService$2;->this$0:Lcom/airbnb/android/services/ArrivalTrackerService;

    iget-object v1, v1, Lcom/airbnb/android/services/ArrivalTrackerService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 252
    iget-object v1, p0, Lcom/airbnb/android/services/ArrivalTrackerService$2;->this$0:Lcom/airbnb/android/services/ArrivalTrackerService;

    invoke-virtual {v1}, Lcom/airbnb/android/services/ArrivalTrackerService;->stopSelf()V

    .line 253
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 245
    check-cast p1, Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/services/ArrivalTrackerService$2;->onResponse(Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;)V

    return-void
.end method
