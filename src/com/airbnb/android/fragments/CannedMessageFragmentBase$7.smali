.class Lcom/airbnb/android/fragments/CannedMessageFragmentBase$7;
.super Ljava/lang/Object;
.source "CannedMessageFragmentBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->onInputTextFocus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)V
    .registers 2

    .prologue
    .line 338
    iput-object p1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$7;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$7;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    iget-object v0, v0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 342
    return-void
.end method
