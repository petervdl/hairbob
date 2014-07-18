.class Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter$1;
.super Ljava/lang/Object;
.source "CannedMessageFragmentBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;I)V
    .registers 3

    .prologue
    .line 388
    iput-object p1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter$1;->this$1:Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;

    iput p2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter$1;->this$1:Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;

    iget-object v0, v0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    iget v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->showDeleteCannedMsgConfirmationDialog(I)V

    .line 393
    return-void
.end method
