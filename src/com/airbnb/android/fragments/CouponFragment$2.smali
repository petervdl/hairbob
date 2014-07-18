.class Lcom/airbnb/android/fragments/CouponFragment$2;
.super Ljava/lang/Object;
.source "CouponFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CouponFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/CouponFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CouponFragment;)V
    .registers 2

    .prologue
    .line 136
    iput-object p1, p0, Lcom/airbnb/android/fragments/CouponFragment$2;->this$0:Lcom/airbnb/android/fragments/CouponFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    invoke-static {}, Lcom/airbnb/android/analytics/ReferralsAnalytics;->trackSkipForNow()V

    .line 141
    iget-object v0, p0, Lcom/airbnb/android/fragments/CouponFragment$2;->this$0:Lcom/airbnb/android/fragments/CouponFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/CouponFragment$2;->this$0:Lcom/airbnb/android/fragments/CouponFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/CouponFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/activities/MainActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/CouponFragment;->startActivity(Landroid/content/Intent;)V

    .line 142
    return-void
.end method
