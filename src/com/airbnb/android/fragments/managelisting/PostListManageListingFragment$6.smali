.class Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$6;
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
    .line 228
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 231
    const v0, 0x7f0e07a1

    const v1, 0x7f0e0517

    const v2, 0x7f0e0563

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->createSingleButtonDialog(III)Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 233
    return-void
.end method
