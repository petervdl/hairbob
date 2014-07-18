.class Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment$2;
.super Ljava/lang/Object;
.source "LastMinuteBookingFiltersFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/CitySelectorView$OnCitySelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;

.field final synthetic val$fLocationThatAllowsDistanceSort:Lcom/airbnb/android/models/AirLocation;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;Lcom/airbnb/android/models/AirLocation;)V
    .registers 3

    .prologue
    .line 98
    iput-object p1, p0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment$2;->this$0:Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment$2;->val$fLocationThatAllowsDistanceSort:Lcom/airbnb/android/models/AirLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCitySelected(Lcom/airbnb/android/models/AirLocation;)V
    .registers 4
    .param p1, "selectedLocation"    # Lcom/airbnb/android/models/AirLocation;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment$2;->this$0:Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;

    iget-object v1, v0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->mSortBySelector:Lcom/airbnb/android/views/SortBySelectorView;

    iget-object v0, p0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment$2;->val$fLocationThatAllowsDistanceSort:Lcom/airbnb/android/models/AirLocation;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment$2;->val$fLocationThatAllowsDistanceSort:Lcom/airbnb/android/models/AirLocation;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/models/AirLocation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/SortBySelectorView;->setDistanceSortEnabled(Z)V

    .line 102
    return-void

    .line 101
    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method
