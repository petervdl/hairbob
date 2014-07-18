.class Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4$1;
.super Ljava/lang/Object;
.source "ArrivalTrackerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4;->onResponse(Lcom/airbnb/android/requests/GetArrivalPlanRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4;)V
    .registers 2

    .prologue
    .line 350
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4$1;->this$1:Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4$1;->this$1:Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 354
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4$1;->this$1:Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    # invokes: Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->requestAndUpdateGuestLocation()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->access$300(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)V

    .line 356
    :cond_11
    return-void
.end method
