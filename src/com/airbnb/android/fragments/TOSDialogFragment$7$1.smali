.class Lcom/airbnb/android/fragments/TOSDialogFragment$7$1;
.super Ljava/lang/Object;
.source "TOSDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/TOSDialogFragment$7;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/TOSDialogFragment$7;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/TOSDialogFragment$7;)V
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lcom/airbnb/android/fragments/TOSDialogFragment$7$1;->this$1:Lcom/airbnb/android/fragments/TOSDialogFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/airbnb/android/fragments/TOSDialogFragment$7$1;->this$1:Lcom/airbnb/android/fragments/TOSDialogFragment$7;

    iget-object v0, v0, Lcom/airbnb/android/fragments/TOSDialogFragment$7;->this$0:Lcom/airbnb/android/fragments/TOSDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/TOSDialogFragment;->decline()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/TOSDialogFragment;->access$500(Lcom/airbnb/android/fragments/TOSDialogFragment;)V

    .line 144
    return-void
.end method
