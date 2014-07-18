.class Lcom/airbnb/android/fragments/PayoutListFragment$1;
.super Ljava/lang/Object;
.source "PayoutListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutListFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutListFragment;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutListFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/PayoutActivity;

    invoke-static {}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;->newInstance()Lcom/airbnb/android/fragments/PayoutWelcomeFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/PayoutActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 106
    return-void
.end method
