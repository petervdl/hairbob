.class Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$10;
.super Ljava/lang/Object;
.source "PostListManageListingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)V
    .registers 2

    .prologue
    .line 260
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 263
    const/16 v0, 0x79b

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/DeleteListingDialog;->newInstance(ILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/DeleteListingDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/DeleteListingDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 265
    return-void
.end method
