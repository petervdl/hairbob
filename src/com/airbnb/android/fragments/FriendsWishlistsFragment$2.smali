.class Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;
.super Ljava/lang/Object;
.source "FriendsWishlistsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/FriendsWishlistsFragment;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    new-instance v0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;-><init>(Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;)V

    invoke-static {v0}, Lcom/airbnb/android/utils/SignInUtil;->signInToFacebook(Lcom/airbnb/android/utils/SignInUtil$SignInListener;)V

    .line 170
    return-void
.end method
