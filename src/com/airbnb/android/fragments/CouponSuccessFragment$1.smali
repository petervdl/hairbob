.class Lcom/airbnb/android/fragments/CouponSuccessFragment$1;
.super Ljava/lang/Object;
.source "CouponSuccessFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CouponSuccessFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/CouponSuccessFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CouponSuccessFragment;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/airbnb/android/fragments/CouponSuccessFragment$1;->this$0:Lcom/airbnb/android/fragments/CouponSuccessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/android/fragments/CouponSuccessFragment$1;->this$0:Lcom/airbnb/android/fragments/CouponSuccessFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/CouponSuccessFragment$1;->this$0:Lcom/airbnb/android/fragments/CouponSuccessFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/CouponSuccessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/activities/MainActivity;->intentForAfterReferral(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/CouponSuccessFragment;->startActivity(Landroid/content/Intent;)V

    .line 35
    iget-object v0, p0, Lcom/airbnb/android/fragments/CouponSuccessFragment$1;->this$0:Lcom/airbnb/android/fragments/CouponSuccessFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/CouponSuccessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 36
    return-void
.end method
