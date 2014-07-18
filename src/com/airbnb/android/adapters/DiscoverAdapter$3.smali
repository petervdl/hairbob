.class Lcom/airbnb/android/adapters/DiscoverAdapter$3;
.super Ljava/lang/Object;
.source "DiscoverAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/DiscoverAdapter;->getLastMinuteBookingsView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/DiscoverAdapter;)V
    .registers 2

    .prologue
    .line 192
    iput-object p1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$3;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/persist/LmbAirLocationStore;->getClosestAirLocation(Landroid/content/Context;)Lcom/airbnb/android/models/AirLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/AirLocation;->getSearchTerm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->trackLastMinuteDealsCalloutClick(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 197
    return-void
.end method
