.class Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$6;
.super Ljava/lang/Object;
.source "LastMinuteListingsPhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->setupListViewHeaderFooter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;)V
    .registers 2

    .prologue
    .line 154
    iput-object p1, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$6;->this$0:Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-static {}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackLmbFiltersClick()V

    .line 158
    iget-object v0, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$6;->this$0:Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/activities/LastMinuteBookingFiltersActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0xeb

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 159
    return-void
.end method
