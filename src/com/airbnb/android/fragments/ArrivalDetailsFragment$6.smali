.class Lcom/airbnb/android/fragments/ArrivalDetailsFragment$6;
.super Ljava/lang/Object;
.source "ArrivalDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setupEstimatedArrivalEdit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V
    .registers 2

    .prologue
    .line 383
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$6;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 386
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$6;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$000(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackTravelDetailsSetEstimatedArrival(JLcom/airbnb/android/utils/Strap;)V

    .line 387
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$6;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1200(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getArrivalHour()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$6;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1200(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getArrivalMinute()I

    move-result v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$6;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/fragments/TimePickerDialog;->newInstance(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/TimePickerDialog;

    move-result-object v0

    .line 388
    .local v0, "dialog":Lcom/airbnb/android/fragments/TimePickerDialog;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$6;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "time_picker"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/TimePickerDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 389
    return-void
.end method
