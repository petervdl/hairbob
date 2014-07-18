.class Lcom/airbnb/android/utils/ShakeFeedbackHelper$1;
.super Ljava/lang/Object;
.source "ShakeFeedbackHelper.java"

# interfaces
.implements Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/utils/ShakeFeedbackHelper;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/utils/ShakeFeedbackHelper;


# direct methods
.method constructor <init>(Lcom/airbnb/android/utils/ShakeFeedbackHelper;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$1;->this$0:Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake()V
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$1;->this$0:Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    # invokes: Lcom/airbnb/android/utils/ShakeFeedbackHelper;->showFeedbackDialog()V
    invoke-static {v0}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->access$100(Lcom/airbnb/android/utils/ShakeFeedbackHelper;)V

    .line 81
    return-void
.end method
