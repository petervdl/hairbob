.class Lcom/airbnb/android/fragments/PayoutWelcomeFragment$2;
.super Ljava/lang/Object;
.source "PayoutWelcomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutWelcomeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutWelcomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutWelcomeFragment;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutWelcomeFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutWelcomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutWelcomeFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutWelcomeFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/PayoutActivity;

    new-instance v1, Lcom/airbnb/android/fragments/PayoutTrustFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/PayoutTrustFragment;-><init>()V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/PayoutActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 65
    return-void
.end method
