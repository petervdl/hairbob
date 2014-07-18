.class Lcom/airbnb/android/fragments/MyWishListListingsFragment$1;
.super Ljava/lang/Object;
.source "MyWishListListingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/MyWishListListingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$1;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$1;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$1;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/activities/MainActivity;->intentForSearch(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 95
    return-void
.end method
