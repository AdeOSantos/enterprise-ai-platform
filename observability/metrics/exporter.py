"""Prometheus metrics exporter."""

from prometheus_client import Counter, Histogram, Gauge

prediction_counter = Counter('predictions_total', 'Total predictions')
prediction_latency = Histogram('prediction_duration_seconds', 'Prediction latency')
model_version = Gauge('model_version', 'Current model version')

def record_prediction(latency, success):
    """Record prediction metrics."""
    prediction_counter.inc()
    prediction_latency.observe(latency)
