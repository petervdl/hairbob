.class Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$8;
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
    .line 242
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$8;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$8;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    # invokes: Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->listOrUnlist()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->access$200(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)V

    .line 246
    return-void
.end method
