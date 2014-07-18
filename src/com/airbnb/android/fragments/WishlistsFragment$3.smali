.class Lcom/airbnb/android/fragments/WishlistsFragment$3;
.super Ljava/lang/Object;
.source "WishlistsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/WishlistsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/WishlistsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/WishlistsFragment;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/airbnb/android/fragments/WishlistsFragment$3;->this$0:Lcom/airbnb/android/fragments/WishlistsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/airbnb/android/fragments/WishlistsFragment$3;->this$0:Lcom/airbnb/android/fragments/WishlistsFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/WishlistsFragment$3;->this$0:Lcom/airbnb/android/fragments/WishlistsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/WishlistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/activities/MainActivity;->intentForDiscover(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/WishlistsFragment;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method
