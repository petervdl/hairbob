.class Lcom/airbnb/android/fragments/ArrivalDetailsFragment$5;
.super Ljava/lang/Object;
.source "ArrivalDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setupDepartureTime()V
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
    .line 372
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 375
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$000(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackTravelDetailsSetDepartureDate(JLcom/airbnb/android/utils/Strap;)V

    .line 376
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1100(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/DatePickerDialog;->newInstance(Ljava/util/Calendar;Landroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/DatePickerDialog;

    move-result-object v0

    .line 377
    .local v0, "dialog":Lcom/airbnb/android/fragments/DatePickerDialog;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$5;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "date_picker"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/DatePickerDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 378
    return-void
.end method
