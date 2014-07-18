.class Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment$1;
.super Ljava/lang/Object;
.source "FullDescriptionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->setupView(Landroid/view/View;IILjava/lang/String;Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$ordinal:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 93
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment$1;->val$ordinal:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    iput-object p3, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment$1;->val$ordinal:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment$1;->val$data:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onTextItemSelected(ILjava/lang/String;)V

    .line 98
    return-void
.end method
