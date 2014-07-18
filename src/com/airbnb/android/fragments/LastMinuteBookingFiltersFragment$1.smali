.class Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment$1;
.super Ljava/lang/Object;
.source "LastMinuteBookingFiltersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment$1;->this$0:Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment$1;->this$0:Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/SlideUpTransparentActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->dismissContent(Z)V

    .line 58
    return-void
.end method
