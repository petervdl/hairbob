.class Lcom/airbnb/android/utils/ShakeFeedbackHelper$2$1;
.super Ljava/lang/Object;
.source "ShakeFeedbackHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/utils/ShakeFeedbackHelper$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/utils/ShakeFeedbackHelper$2;

.field final synthetic val$descStr:Ljava/lang/String;

.field final synthetic val$titleStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/utils/ShakeFeedbackHelper$2;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 130
    iput-object p1, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$2$1;->this$1:Lcom/airbnb/android/utils/ShakeFeedbackHelper$2;

    iput-object p2, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$2$1;->val$titleStr:Ljava/lang/String;

    iput-object p3, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$2$1;->val$descStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$2$1;->this$1:Lcom/airbnb/android/utils/ShakeFeedbackHelper$2;

    iget-object v0, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$2;->this$0:Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    iget-object v1, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$2$1;->val$titleStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$2$1;->val$descStr:Ljava/lang/String;

    # invokes: Lcom/airbnb/android/utils/ShakeFeedbackHelper;->sendFeedback(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->access$300(Lcom/airbnb/android/utils/ShakeFeedbackHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method
