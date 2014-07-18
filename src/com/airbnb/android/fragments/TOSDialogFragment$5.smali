.class Lcom/airbnb/android/fragments/TOSDialogFragment$5;
.super Ljava/lang/Object;
.source "TOSDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/TOSDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/TOSDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/TOSDialogFragment;)V
    .registers 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/airbnb/android/fragments/TOSDialogFragment$5;->this$0:Lcom/airbnb/android/fragments/TOSDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 120
    return-void
.end method
